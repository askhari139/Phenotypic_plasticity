Perturber <- function(topo_file, directory = getwd()){#browser()
    library(tidyverse)
    library(magrittr)
    library(stringr)
    directory = str_remove(topo_file, ".topo")
    if(!dir.exists(directory)) dir.create(directory)
    topo_name <- topo_file %>% str_remove(".topo")
    
    topo_original <- read.delim(topo_file, stringsAsFactors = F, sep = " ")
    
    components <- unique(c(topo_original$Source, topo_original$Target))
    
    network_total <- data.frame(Source = rep(components, each = length(components)), 
                                Target = rep(components, length(components)),
                                Act = 1, Inh = 2) %>% gather(key = "Name", value = "Type", -Source, -Target)
    network_total <- network_total[, -3]
    
    colnames(topo_original)[3] <- "Type_o"
    
    network_total <- merge(network_total, topo_original, by = c("Source", "Target"), all = T)
    network_total[is.na(network_total)] <- 0
    network_total <- network_total[, c(1,2,4,3)]
    colnames(network_total)[3] <- "Old"
    colnames(topo_original)[3] <- "Type"
    
    df_list <- apply(network_total, 1, function(x){#browser()
        df <- topo_original
        if (x[3] == x[4])
        {
            x[4] <- 0
            df <- df[-which(df$Source == x[1] & df$Target == x[2]),]
        }
        else if(x[3] == 0)
            df <- rbind.data.frame(df, x[c(1,2,4)])
        else
            df$Type[df$Source == x[1] & df$Target == x[2]] <- x[4]
        
        name <- paste0(x, collapse = "_")
        if(!str_detect(directory, "/$")) directory %<>% paste0("/")
        write_delim(df, paste0(directory, name, ".topo"), delim = " ")
    })
    0
}

filez <- list.files(".", "topo")
dummy <- sapply(filez, Perturber)

folders <- filez %>% str_remove(".topo")

dummy <- lapply(folders, function(x){#browser()
    setwd(x)
    f <- list.files(".", "topo")
    command <- paste0("python JSD_plas.py ", paste(f, collapse = " "))
    system(command)
    df <- read.csv("pos.csv")
    colnames(df) <- c("Network", "Pos_loops", "Neg_loops")
    setwd("..")
    write.csv(df, paste0(x, ".csv"), row.names = F)
})
