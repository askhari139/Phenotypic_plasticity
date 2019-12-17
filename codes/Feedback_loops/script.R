# set working directory to the topo_files directory
library(tidyverse)
library(stringr)

filez <- list.files(".", "topo")
netwroks <- filez %>% str_remove(".topo")
command <- paste0("python ../../codes/Feedback_loops/Positive_loops.py ", paste(filez, collapse = " "))
system(command)
dir.create("../../Figures/Loop_data")
system("mv *csv ../../Figures/Loop_data")
setwd("../../Figures/Loop_data")

edgelist <- function(x){
    x <- str_split(x, ",") %>% unlist
    l <- length(x)
    x <- c(x, x[1])
    x_mod <- sapply(1:l, function(y){
        paste(x[c(y, y+1)],collapse = ",") 
    })
}

filez <- list.files(".", ".csv")
dummy <- lapply(filez, function(x){
    df <- read.csv(x)
    loopEdges <- sapply(df$Cycles, edgelist) %>% lapply(function(y){
        d <- data.frame(table(y))
        colnames(d) <- c("Edges", "Freq")
        d
    }) %>% reduce(merge, by = "Edges", all = T)
    loopEdges[is.na(loopEdges)] <- 0
    loopLengths <- lapply(2:ncol(loopEdges), function(y){
        cycle <- df$Cycles[y]
        cycle_length <- length(cycle %>% str_split(",") %>% unlist)
        loopEdges[, y]*cycle_length
    }) %>% reduce(cbind.data.frame)
    
    nloopEdges <- sapply(df$Cycles, edgelist) %>% lapply(function(y){
        d <- data.frame(table(y))
        colnames(d) <- c("Edges", "Freq")
        d
    }) %>% reduce(merge, by = "Edges", all = T)
    nloopEdges[is.na(nloopEdges)] <- 0
    nloopLengths <- lapply(2:ncol(nloopEdges), function(y){
        cycle <- df$Cycles[y]
        cycle_length <- length(cycle %>% str_split(",") %>% unlist)
        loopEdges[, y]*cycle_length
    }) %>% reduce(cbind.data.frame)
    
    d <- data.frame(Edges = loopEdges$Edges, pLoopCount = rowSums(loopEdges[, -1]), pLoopLengthAvg = apply(loopLengths, 1, mean), 
               pLoopLengthStd = apply(loopLengths, 1, sd),
               )
    
    
    write.csv(d, paste0(str_remove(x, ".csv"), "_edges.csv"))
    
})
