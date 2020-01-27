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

converter <- function(topo_file){
    
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
    
    defin_line <- paste0("function dydt = ", str_remove(topo_file, ".topo"), "(t, y, ", paste0(Parameters, collapse = ","),")")
    
    gene_lines <- paste0(genes, " = y(", 1:length(genes), ")",  ";")
    
    full_code <- c(defin_line, gene_lines, Hilleqns, Dequns)
    
    
    
    writeLines(text = full_code, con = paste0(str_remove(topo_file, ".topo"), ".m"))
    
    
    ### Solver file - specific parameters
    
    Parameter_listing <- paste0(paste0(Parameters, collapse = " = 0;"), " = 0;")
    
    initial_cond <- paste0("y0 = [", paste0(rep("0", length(genes)), collapse = ","), "];")
    t <- paste0("tspan = 1:1000;")
    func_caller <- paste0("[t y] = ode45(@(t,y)func(t,y,", paste0(Parameters, collapse = ","), "), tspan, y0);")
    
    defin_line_solver <- paste0("function dydt = ", str_remove(topo_file, ".topo"), "(t, y, ", paste0(Parameters, collapse = ","),")")
    adaptive_iintegration <- c(paste0("while round((y(end, :) - y((end-1), :)), 3) ~=0 "), 
                               "y0 = y(end, :);", func_caller, "end")
    
    full_code_solver <- c(Parameter_listing, initial_cond, t, func_caller, adaptive_iintegration)
    
    network_input <- paste0("topo_file = input('Enter the name of the network as in RACIPE : %s')")
    
    writeLines(text = full_code_solver, con = paste0(str_remove(topo_file, ".topo"), "_solver.m"))
    
}


setwd("E:/Github_projects/Phenotypic_plasticity/Data/topo_files/")

topo_files <- list.files(".", ".topo")
dummy <- sapply(topo_files, converter)

### RACIPE simulation

