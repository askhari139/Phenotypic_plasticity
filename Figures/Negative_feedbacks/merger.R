library(tidyverse)
library(stringr)
library(magrittr)

f <- list.dirs()[-1]
f <- f %>% str_remove("./")
f1 <- paste0(f, ".csv")
f2 <- paste0(f, "_S_data.csv")

df_list <- lapply(1:length(f), function(x){
    d1 <- read.csv(f1[x])
    d2 <- read.csv(f2[x])
    d2$name <- d2$name %>% str_remove("\\d*_") %>% str_replace_all("-", "_")
    colnames(d2)[1] <- "Network"
    df <- merge(d1, d2, by = "Network", all = T)
    write.csv(df, paste0(f[x], "_all.csv"))
})
