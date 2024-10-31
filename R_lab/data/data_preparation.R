setwd("/Users/visconti/Documents/Teaching/biostat_101/R_lab/data")

#Read data
hap_score <- read.csv("hapiscore_whr.csv")
health_ex <- read.csv("government_health_spending_of_total_gov_spending_percent.csv")
geo <- as.data.frame(readxl::read_excel("Data Geographies - v2 - by Gapminder.xlsx", sheet = "list-of-countries-etc"))

#Select those of interest
hap_score <- hap_score[, c("country", "X2011")]
health_ex <- health_ex[, c("country", "X2010")]
geo <- geo[, c("name", "four_regions", "World bank, 3 income groups 2017")]

df <- merge(hap_score, health_ex, by="country", all=T)
df <- merge(geo, df, by.x="name", by.y="country", all=F)
colnames(df) <- c("country", "world_region", "income_group_2017", "happiness_score_2011", "gov_health_spending_percent")

#there are countries with commas
df$country <- sapply(df$country, gsub, pattern=",", replacement="")

write.table(df, file="gapminder.csv", sep=",", quote=FALSE, col.names=TRUE, row.names=FALSE)


set.seed(123)
tmp <- na.omit(df)
tmp <- tmp[sample(1:nrow(tmp), 8), ]

set.seed(123)
tmp2 <- df[df$income_group_2017 == "Low income", ]
tmp2 <- tmp2[sample(1:nrow(tmp2), 2), ]

write.table(rbind(tmp, tmp2), file="gapminder_small.csv", sep=",", quote=F, col.names=TRUE, row.names=FALSE)




# How happy is the world
# histogram happiness
# histogram happiness by region
# mean/median happiness 
# I soldi fanno la felicita'? 
# 	Box plot by income
# 	t test low/high income (one tail, two tails, CI)
# La salute (pubblica) fa la felicita'
#	scatterplot happiness vs expenses
#	PCC happiness vs expenses