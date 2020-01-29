library(tidyverse)
library(stringr)
library(magrittr)

hill_shift <- function(Row)
{
    Source = Row[1]
    Target = Row[2]
    Type = Row[3]
    lKey = ifelse(Type == "1", "Act_of_", "Inh_of_") %>% paste0(., Source, "To", Target)
    nKey = paste0("Num_of_", Source, "To", Target)
    tKey = paste0("Trd_of_", Source, "To", Target)
    hPlus = paste0(Source , "^", nKey, "/(", Source, "^", nKey, " + ", tKey, "^", nKey, ")")
    eqn = paste0("1 + (", lKey, " - 1)*", hPlus)
    if (Type == 1)
        eqn <- paste0("(",eqn, ")/Act_of_", Source, "To", Target)
    
    eqn <- paste0("Hills",Source, "_", Target, " = ", eqn, ";")
    c(eqn, lKey, nKey, tKey)
}

converter <- function(topo_file){#browser()
    
    df <- read.delim(topo_file, sep = " ", stringsAsFactors = F)
    if (ncol(df) != 3)
        df <- read.delim(topo_file, sep = "\t", stringsAsFactors = F)
    
    genes <- c(df[[1]], df[[2]]) %>% unique
    
    Hilleqns <- character()
    Parameters <- character()
    
    dummy <- sapply(df %>% t %>% as.data.frame, function(x){
        p <- hill_shift(x)
        Hilleqns <<- c(Hilleqns, p[1])
        Parameters <<- c(Parameters, p[2:4])
        NULL
    })
    
    dummy <- sapply(genes, function(x){
        Parameters <<- c(Parameters, paste0(c("Prod_of_", "Deg_of_"), x))
    })
    
    Dequns <- sapply(genes, function(x){
        degTerm <- paste0("Deg_of_", x, "*", x)
        Hillterms <- sapply(df[df$Target == x, ] %>% t %>% as.data.frame, function(y){
            paste0("Hills", y[1], "_", y[2])
        }) %>% paste(collapse = "*")
        conr <- ifelse(Hillterms == "", "", "*")
        prodTerm <- paste0("Prod_of_", x, conr, Hillterms)
        paste0(prodTerm, " - ", degTerm)
    })
    Dequns[1] <- paste0("dydt = [", Dequns[1])
    Dequns[length(Dequns)] <- paste0(Dequns[length(Dequns)], "];")
    
    defin_line <- c(paste0("function dydt = ", str_remove(topo_file, ".topo"), 
                         "(t, y, p)"),
                    paste0(Parameters, " = p(", 1:length(Parameters), ");"))
    
    gene_lines <- paste0(genes, " = y(", 1:length(genes), ")",  ";")
    
    full_code <- c(defin_line, gene_lines, Hilleqns, Dequns)
    
    
    
    writeLines(text = full_code, con = paste0(str_remove(topo_file, ".topo"), ".m"))
    
    
    ### Solver file - specific parameters
    
    # Parameter_listing <- paste0(paste0(Parameters, collapse = " = 0;"), " = 0;")
    Parameter_listing <- paste0("params = {'", paste0(Parameters, collapse = "', '"), "'};")
    column_order1 <- c( paste0("prs_file = '", str_remove(topo_file, ".topo"), ".prs';"),
                        paste0("prs_new = '", str_remove(topo_file, ".topo"), ".dat';"),
                        paste0("copyfile(prs_file, prs_new);"),
                        paste0("par_list = readtable(prs_new);"),
                        paste0("par_list = string(par_list.Parameter);"),
                        paste0("par_order = zeros(length(par_list),1);"),
                        paste0("for i = 1:length(params)"),
                        paste0("    par_order(i) = find(par_list == params(i));"),
                        paste0("end"),
                        paste0("n_nodes = sum(contains(par_list, 'Prod'));")
    )
    
    parameter_read <- c(paste0("par_file = '", str_remove(topo_file, ".topo"), "_parameters.dat';"),
                        paste0("parameters = table2array(readtable(par_file));"),
                        paste0("parameters =  parameters(:, 3:end);"),
                        paste0("tspan = 1:100;"),
                        "ss_tot = zeros(1, n_nodes+1);",
                        paste0("parfor i = 1:size(parameters,1)"),
                        paste0("    p = parameters(i,par_order);"),
                        "    p1 = parameters(i,:);",
                        "    ss=zeros(1,n_nodes);",
                        paste0("    lims = p1(1:n_nodes)./p1((1:n_nodes) + n_nodes);"),
                        paste0("    for j = 1:100"),
                        paste0("        y0 = lims.*rand(1,n_nodes);"),
                        paste0("        [t y] = ode23s(@(t,y)", str_remove(topo_file, ".topo"),"(t,y,p), tspan, y0);"),
                        paste0("        while sum(round((y(end, :) - y((end-1), :)), 3)) ~= 0"),
                        "            y0 = y(end,:);",
                        paste0("            [t y] = ode23s(@(t,y)", 
                               str_remove(topo_file, ".topo"),"(t,y,p), tspan, y0);"),
                        "        end",
                        "        if all(abs(sum(ss - y(end, :),2)) > 0.01)",
                        "            ss = [ss;y(end, :)];",
                        "        end",
                        "    end",
                        "    ss = [repelem(i, size(ss(2:end,:),1))' ss(2:end, :)];",
                        "    ss_tot = [ss_tot; ss];",
                        "end",
                        "ss_tot = unique(ss_tot, 'rows');",
                        "ss_tot = array2table(ss_tot(2:end,:));",
                        paste0("writetable(ss_tot, '",str_remove(topo_file, ".topo"), "_ss.csv');")
                        )
    
    full_code_solver <- c(Parameter_listing, column_order1, parameter_read)
    
    writeLines(text = full_code_solver, con = paste0(str_remove(topo_file, ".topo"), "_solver.m"))
    
}


setwd("E:/Re-sims/Original/")
dirs <- list.dirs(".", recursive = F)
dirs <- dirs[-(str_detect(dirs, "RACIPE"))]
dummy <- sapply(dirs, function(x){
    setwd(x)
    d2 <- list.dirs(".", recursive = F)
    dummy2 <- sapply(d2, function(y){#browser()
        setwd(y)
        topo_file <- list.files(".", ".topo")
        dummy <- converter(topo_file)
        # system(paste0("matlab -nodisplay -nosplash -nodesktop -r '", str_remove(topo_file, ".topo"), "_solver.m'"))
        setwd("..")
    })
    setwd("..")
})

