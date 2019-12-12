library(tidyverse)
library(stringr)
library(magrittr)

f <- list.files(".", "csv")
f <- f[-which(str_detect(f, "1.csv"))]

dummy <- lapply(f, function(x){browser()
    nam <- str_remove(x, "_QC.csv")
    df <- read.csv(x)
    df <- df[complete.cases(df),]
    df$State <- df[, 1:3] %>% apply(1, function(x){
        x[3] + 2*x[2] + 4*x[1]
    })
    df <- df[, -(1:3)]
    colnames(df) <- c("Average", "Sdev", "Number", "State")
    n_states <- length(unique(df$State))
    #df <- df[-(1:n_states),]
    #df$Number <- rep(c("100", "1000", "10000", "100000"), each = n_states)
    #df <- df[-(which(df$Average < max(df$Average)/100)), ]
    #n_states <- length(unique(df$State))
    df <- df[order(df$Average, decreasing = T), ]
    states <- unique(df$State)
    coor1 <- cbind.data.frame(State = states, Coord1 = 1:n_states)
    coor2 <- cbind.data.frame(Number = c("100", "1000", "10000", "100000"), Coord2 = c(-0.3, -0.15, 0, 0.15))
    df %<>% merge(coor1, by = "State", all = T) %<>% merge(coor2, by = "Number", all = T) %<>% 
        mutate(Coord = Coord1 + Coord2) %<>%
        select(State, Average, Sdev, Coord, Number)
    write.csv(df, paste0(nam, "_QC1.csv"))
    dir.create(nam)
    df_list <- split.data.frame(df, df$Number)
    dum <- sapply(df_list, function(y){
        setwd(nam)
        n <- unique(y$Number)
        write.csv(y, paste0(n, ".csv"))
        setwd("..")
    })
})

