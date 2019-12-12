f <- list.files(".", "Combined_data", recursive = T)[-1]

library(tidyverse)
library(stringr)
library(ggthemes)

df <- read.csv(f[2], stringsAsFactors = F) %>% select(-plast)
df$JSDid <- floor(log(df$JSD))

networks <- unique(df$network)

df_list <- lapply(networks, function(x){#browser()
    d <- df[df$network == x,]
    pos_cyc <- unique(d$JSDid)
    dat <- lapply(pos_cyc, function(x){
        d1 <- d[d$JSDid == x,]
        if(nrow(d1) > 2)
            c(cor.test(d1$pos_cyc, d1$plast_2)$estimate, cor.test(d1$pos_cyc, d1$plast_2)$p.value)
        else
            c(NA, NA)
    }) %>% reduce(rbind.data.frame) %>% mutate(Pos = pos_cyc)
    colnames(dat) <- c(paste0(x, c("Cor", "Pval")), "Pos")
    dat
}) %>% reduce(merge, by  = "Pos", all = T)

write.csv(df_list, "Randomization_J.csv", row.names = F)

