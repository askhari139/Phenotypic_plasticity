
f <- list.files(".", "R_data", recursive = T)
df <- lapply(f, function(x){
    read.csv(x, stringsAsFactors = F) %>% select(plast, plast_2, JSD, pos_cycle) %>% mutate(network = x %>% str_remove("_R_data.csv"))
}) %>% reduce(rbind.data.frame, stringsAsFactors=F)

write.csv(df, "Combined_data.csv", row.names = F)

df <- df[-which(df$JSD == 0), ]

df$logJSD <- log(df$JSD)

df$JSD_tag <- floor(df$logJSD)

corr_df <- df %>% select(plast, JSD_tag, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(JSD_tag) %>% summarise(correlation = cor.test(plast, pos_cycle, method = "spearman")$estimate)
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "JSD_tag", all = T)

write.csv(corr_df, "Plast_pos_by_JSD.csv")



