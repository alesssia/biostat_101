clean()
set.seed(42)

library(ggplot2)
library(gridExtra)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


setwd("/Users/visconti/Documents/Teaching/biostat_101/img/hypothesis_testing")

load("/Users/visconti/Documents/Research/2015/random/avisconti/birthWeight/data/BirthData.RData")

df <- df[!is.na(df$Bweight), ]
df$Bweight <- df$Bweight * 1000
df$ZYG <- as.character(df$ZYG)
df$ZYG[df$ZYG == "MZ"] <- 'Monozigoti'
df$ZYG[df$ZYG == "DZ"] <- 'Dizigoti'

bw <- 250


p <- ggplot(df, aes(x = Bweight)) + 
	 stat_function(fun = function(x) dnorm(x, mean(df$Bweight[df$ZYG == "Monozigoti"]), sd = sd(df$Bweight[df$ZYG == "Monozigoti"])) * bw * sum(df$ZYG == "Monozigoti"), colour="darkgreen", lwd=1) + 
	 stat_function(fun = function(x) dnorm(x, mean(df$Bweight[df$ZYG == "Dizigoti"]), sd = sd(df$Bweight[df$ZYG == "Dizigoti"])) * bw * sum(df$ZYG == "Dizigoti"), colour="darkmagenta", lwd=1) + 
	 annotate("text", x = mean(df$Bweight[df$ZYG == "Monozigoti"]), y = 680, label = "Monozigoti", color="darkgreen", size=7) +
	 annotate("text", x = mean(df$Bweight[df$ZYG == "Dizigoti"])+480, y = 610, label = "Dizigoti", color="darkmagenta", size=7) +
 	 geom_segment(aes(x = mean(df$Bweight[df$ZYG == "Monozigoti"]), y = dnorm(mean(df$Bweight[df$ZYG == "Monozigoti"]), mean=mean(df$Bweight[df$ZYG == "Monozigoti"]), sd=sd(df$Bweight[df$ZYG == "Monozigoti"])) * bw * sum(df$ZYG == "Monozigoti"), xend = mean(df$Bweight[df$ZYG == "Monozigoti"]), yend = 0), color="darkgreen", lwd=1) +
 	geom_segment(aes(x = mean(df$Bweight[df$ZYG == "Dizigoti"]), y = dnorm(mean(df$Bweight[df$ZYG == "Dizigoti"]), mean=mean(df$Bweight[df$ZYG == "Dizigoti"]), sd=sd(df$Bweight[df$ZYG == "Dizigoti"])) * bw * sum(df$ZYG == "Dizigoti"), xend = mean(df$Bweight[df$ZYG == "Dizigoti"]), yend = 0), color="darkmagenta", lwd=1) +
	 graphic.settings + scale_fill_manual(values=c("blue", "darkorange"))  + xlab("Peso alla nascita (g)") + ylab("Counts") 


 png("Twin_BW_distribution_by_zyg.png")
 print(p)
 dev.off()


 p <- ggplot(df, aes(x = Bweight)) + 
	  geom_segment(aes(x = 0, y = 0.01, xend = 112, yend = 0.01), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm"))) + 
	  # geom_segment(aes(x = 0, y = 0.01, xend = -112, yend = 0.01), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm"))) +
	  geom_segment(aes(x = 0, y = 0.01, xend = 1000, yend = 0.01), color="black", lwd=0.7, linetype="dotted") + 
	  # geom_segment(aes(x = 0, y = 0.01, xend = -1000, yend = 0.01), color="black", lwd=1, linetype="dotted", arrow = arrow(length = unit(0.2, "cm"))) +
	  graphic.settings + theme_classic() + xlab("Differenza di peso (g)") + ylab("") + theme(axis.line.y=element_blank(), axis.text.y=element_blank(), axis.ticks.y=element_blank()) 
	  
png("Delta_Bweight.png",width = 480, height = 100)
print(p)
dev.off()

 
 
p <- ggplot(data = data.frame(x = c(-50, 50)), aes(x)) +
	 stat_function(fun = function(x) dnorm(x, 0, 13.5), colour="black", lwd=1) +
	 graphic.settings + xlab("Differenza di peso (g)") + ylab("") + theme(axis.text.x=element_blank())
	 
 
png("Delta_Bweight_h0.png")
print(p)
dev.off() 


p <- ggplot(data = data.frame(x = c(-9, 9)), aes(x)) +
	 stat_function(fun = function(x) dnorm(x, 0, 1), colour="black", lwd=1) +
	 graphic.settings + xlab("") + ylab("") + ggtitle("Normale Standard") +
	 geom_segment(aes(x = 8.3, y = 0.1, xend = 8.3, yend = 0.001), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm")))
 
png("Delta_Bweight_normale_standard.png")
print(p)
dev.off() 
 