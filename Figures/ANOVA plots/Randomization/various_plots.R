library(tidyverse)
library(stringr)

theme_Publication <- function(base_size=14, base_family="sans") {
    library(grid)
    library(ggthemes)
    (theme_foundation(base_size=base_size, base_family=base_family)
        + theme(plot.title = element_text(face = "bold",
                                          size = rel(1.8), hjust = 0.5),
                text = element_text(),
                panel.background = element_rect(colour = NA),
                plot.background = element_rect(colour = NA),
                panel.border = element_rect(colour = NA),
                axis.title = element_text(face = "bold",size = rel(1.5)),
                axis.title.y = element_text(angle=90,vjust =2),
                axis.title.x = element_text(vjust = -0.2),
                axis.text = element_text(size = rel(1.2)), 
                axis.line = element_line(colour="black"),
                axis.ticks = element_line(),
                panel.grid.major = element_line(colour="#f0f0f0"),
                panel.grid.minor = element_blank(),
                legend.key = element_rect(colour = NA),
                legend.position = "bottom",
                legend.direction = "horizontal",
                legend.key.size= unit(0.2, "cm"),
                legend.margin = unit(0, "cm"),
                legend.title = element_text(face="italic"),
                plot.margin=unit(c(10,5,5,5),"mm"),
                strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
                strip.text = element_text(face="bold")
        ))
    
}


file_of_interest <- list.files(".", "R_data.csv")[-(1:2)]

histograms <- sapply(file_of_interest, function(x){#browser()
    df <- read.csv(x, stringsAsFactors = F)
    print(x)
    WT_val <- df %>% filter(name == "WT") %>% unlist
    print(WT_val)
    p <- ggplot(df) + theme_Publication() + labs(title = str_remove(str_extract(x, ".+?_"), "_"))
    p1 <- p + geom_density(aes(x = plast_2, y = (..count..)/sum(..count..))) + 
        # geom_histogram(aes(x = plast_2, y = (..count..)/sum(..count..)), bins = 50) +
        geom_vline(xintercept = as.numeric(WT_val["plast_2"]), color = "red") + 
        labs(x = "PS1", y = "Frequency")
    p2 <- p + geom_density(aes(x = plast, y = (..count..)/sum(..count..))) + 
        # geom_histogram(aes(x = plast, y = (..count..)/sum(..count..)), bins = 50) +
        geom_vline(xintercept = as.numeric(WT_val["plast"]), color = "red") + 
        labs(x = "PS2", y = "Frequency")
    n <- str_remove(x, "_R_data.csv")
    ggsave(paste0(n, "_PS1.png"), plot = p1, width = 5, height = 5)
    ggsave(paste0(n, "_PS2.png"), plot = p2, width = 5, height = 5)
    
})
