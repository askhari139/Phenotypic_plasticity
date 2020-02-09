
f <- list.files(".", "S_data", recursive = T)
df <- lapply(f, function(x){
    read.csv(x, stringsAsFactors = F) %>% select(plast_2, JSD, pos_cycle) %>% mutate(network = x %>% str_remove("_R_data.csv"))
}) %>% reduce(rbind.data.frame, stringsAsFactors=F)

write.csv(df, "Combined_S_data.csv", row.names = F)

df$JSD <- df$JSD + 0.0001

df$logJSD <- log(df$JSD)

df$JSD_tag <- floor(df$logJSD)

corel <- function(x,y){
    if(length(x)>=3)
        cor.test(x, y, method = "spearman")$estimate
    else
        NA
}

corr_df <- df %>% select(plast_2, JSD_tag, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(JSD_tag) %>% summarise(correlation = corel(plast_2, pos_cycle))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "JSD_tag", all = T)

write.csv(corr_df, "Plast_pos_by_JSD.csv")



