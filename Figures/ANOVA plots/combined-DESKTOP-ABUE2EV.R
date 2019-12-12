
f <- list.files(".", "R_data")
df <- lapply(f, function(x){
    read.csv(x, stringsAsFactors = F) %>% select(plast, plast_2, JSD, pos_cycle) %>% mutate(network = x %>% str_remove("_R_data.csv"))
}) %>% reduce(rbind.data.frame, stringsAsFactors=F)

write.csv(df, "Combined_data.csv", row.names = F)

df <- df[-which(df$JSD == 0), ]

df$logJSD <- log(df$JSD)

df$JSD_tag <- floor(df$logJSD)

corr_df <- df %>% select(plast, JSD_tag, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(JSD_tag) %>% summarise(correlation = cor(plast, pos_cycle))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "JSD_tag", all = T)

write.csv(corr_df, "Plast_pos_by_JSD.csv")

library(tidyverse)
library(ggthemes)
library(stringr)
library(magrittr)


f <- list.files(".", "Combined_data", recursive = T)

plots <- lapply(f, function(x){
    df <- read.csv(x, stringsAsFactors = F)
    df$JSD_id <- floor(log(df$JSD))
    df$network[df$network == "GRHL2act"] <- "GRHL2wa"
    df$network[df$network == "OVOLinh"] <- "OVOLsi"
    write.csv(df, x, row.names = F)
    
    p <- ggplot(df, aes(x = JSD, y = as.integer(pos_cycle), color = plast_2)) + geom_point(size = 5) + 
        labs(x = "JSD from WT", y = "Number of Positive \nFeedback loops", color = "Plasticity") +
        facet_wrap(~network, ncol = 3, scales = "free") + 
        theme_bw() + scale_color_viridis_c() + #scale_y_discrete(breaks = min(y):max(y)) +
        theme(axis.title = element_text(family = "sans", face = "bold", size = 30, margin = margin(50,20,0,0)),
              axis.text = element_text(family = "sans", face = "bold", size = 28, color = "black"),
              legend.text = element_text(family = "sans", size = 25, color = "black"),
              legend.title = element_text(family = "sans", size = 28, color = "black", face = "bold", hjust = 0.5),
              panel.grid = element_blank(), strip.background = element_blank(), strip.text = element_blank(),
              legend.key.height = unit(100, "points"), legend.box.spacing = unit(20, "points"), 
              panel.spacing = unit(30, "points"))
    png(paste0(str_remove(x, "/.*"), ".png"), height = 700, width = 1400)
    print(p)
    dev.off()
})
