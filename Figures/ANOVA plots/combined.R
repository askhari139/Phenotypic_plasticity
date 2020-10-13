
f <- list.files(".", "S_data", recursive = T)
df <- lapply(f, function(x){
    read.csv(x, stringsAsFactors = F) %>% select(plast_2, JSD, pos_cycle) %>% 
        mutate(network = x %>% str_remove("_R_data.csv") %>% str_remove("Perturbations/"))
}) %>% reduce(rbind.data.frame, stringsAsFactors=F)

df$JSD <- df$JSD + 0.0001

df$logJSD <- log(df$JSD)

df$JSD_tag <- floor(df$logJSD)

write.csv(df, "Combined_R_data.csv", row.names = F)

corel <- function(x,y){
    if(length(x)>=3)
        cor.test(x, y, method = "spearman")$estimate
    else
        NA
}

pval <- function(x,y){
    if(length(x)>=3)
        cor.test(x, y, method = "spearman")$p.value
    else
        NA
}
### about JSD
corr_df <- df %>% select(plast_2, JSD_tag, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(JSD_tag) %>% summarise(Correl = corel(plast_2, pos_cycle))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "JSD_tag", all = T)

write.csv(corr_df, "Plast_pos_by_JSD.csv", row.names = F)

p_df <- df %>% select(plast_2, JSD_tag, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(JSD_tag) %>% summarise(pV = pval(plast_2, pos_cycle))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "JSD_tag", all = T)
write.csv(p_df, "Plast_pos_by_JSD_p.csv", row.names = F)

### about Pos-feed

corr_df <- df %>% select(plast_2, JSD, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(pos_cycle) %>% summarise(Correl = corel(plast_2, JSD))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "pos_cycle", all = T)

write.csv(corr_df, "Plast_JSD_by_pos.csv", row.names = F)

p_df <- df %>% select(plast_2, JSD, network, pos_cycle) %>% split.data.frame(df$network) %>%
    lapply(function(x){
        y <- x %>% group_by(pos_cycle) %>% summarise(pV = pval(plast_2, JSD))
        colnames(y)[2] <- unique(x$network)
        y
    }) %>% reduce(merge, by = "pos_cycle", all = T)
write.csv(p_df, "Plast_JSD_by_pos_p.csv", row.names = F)



