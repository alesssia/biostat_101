library(ggplot2)

setwd("/Users/visconti/Documents/Teaching/biostat_101/R_lab/images")
gapminder <- read.csv("/Users/visconti/Documents/Teaching/biostat_101/R_lab/data/gapminder.csv")


#Bar plot
freq_a <- table(gapminder$world_region)
world_region <- data.frame(freq_a)


g <- ggplot(gapminder, aes(x=world_region)) + geom_bar(width=0.8, fill="gray", colour="black") + xlab("") + ylab("Count") + ggtitle("World Region", subtitle="Gapminder data") + theme_bw()

png("bar_plot.png")
print(g)
dev.off()



#Mosaic plot
tab_cont <- table(gapminder$world_region, gapminder$income_group_2017)
ord <- c(2, 3, 1) 
tab_cont <- tab_cont[, ord]

png("mosaic_plot.png")
print(mosaicplot(tab_cont, color = c("darkgreen", "gray70", "darkmagenta"), xlab ="World Region", ylab = "Income group", main="Income group by world region")
)
dev.off()

#Histogram
g <- ggplot(gapminder, aes(x=happiness_score_2011)) + geom_histogram(binwidth=5, width=0.8, fill="gray", color="black") + xlab("Score") + ylab("Counts") + ggtitle("World happiness in 2011", subtitle="Gapminder data") + theme_bw()


png("histogram.png")
print(g)
dev.off()

gapminder$income_group_2017 <- factor(gapminder$income_group_2017, levels=c("Low income", "Middle income", "High income"))	
g <- ggplot(gapminder, aes(x=happiness_score_2011, y=income_group_2017)) + geom_boxplot(fill="grey") + xlab("Score") + ylab("") + ggtitle("World happiness by income group", subtitle="Gapminder data") + theme_bw()

png("boxplot.png")
print(g)
dev.off()

library(ggrepel)
g <- ggplot(gapminder, aes(x=gov_health_spending_percent, y=happiness_score_2011)) + geom_point() + xlab("Govt health spending (% of total spending") + ylab("Happiness score") + ggtitle("Happiness in 2011 vs spending in 2010", subtitle="Gapminder data") + theme_bw() + geom_smooth(method="lm") + geom_label_repel(aes(label = country))


png("scatter.png")
print(g)
dev.off()

