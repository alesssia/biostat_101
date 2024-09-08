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
	  geom_segment(aes(x = 0, y = 0.01, xend = -112, yend = 0.01), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm"))) +
	  geom_segment(aes(x = 0, y = 0.01, xend = 1000, yend = 0.01), color="black", lwd=0.7, linetype="dotted") + 
	  geom_segment(aes(x = 0, y = 0.01, xend = -1000, yend = 0.01), color="black", lwd=0.7, linetype="dotted") +
	  geom_segment(aes(x = 0, y = 0.0099, xend = 0, yend = 0.0101), color="black", lwd=0.1) +
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
	 geom_segment(aes(x = 8.3, y = 0.1, xend = 8.3, yend = 0.001), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm"))) +
	 geom_segment(aes(x = -8.3, y = 0.1, xend = -8.3, yend = 0.001), color="black", lwd=1, arrow = arrow(length = unit(0.2, "cm")))
 
png("Delta_Bweight_normale_standard.png")
print(p)
dev.off() 



p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey74", alpha=0.2, xlim = c(-10, 10)) +
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(-15, -10)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(10, 15)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	# annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.005, label = "paste(mu[1] - mu[2], \"\")", parse = TRUE, size=7) +
	# annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.005, label = "paste(mu[2] - mu[1], \"\")", parse = TRUE, size=7) +
	geom_segment(aes(x = -12, y = dnorm(-12, mean=0, sd=4)+0.01, xend = -11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = 12, y = dnorm(12, mean=0, sd=4)+0.01, xend = 11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	# annotate("text", x = 0, y = dnorm(12, mean=0, sd=4)+0.01, label = "paste(1- alpha, \"\")", parse = TRUE, size=7) +
	# geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	# geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	# annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -10, y = -0.005, label = "-z", parse=T, size=5) +
	annotate('text', x = 10, y = -0.005, label = "z", parse=T, size=5) +
	# geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
	theme_void()

png("Two-tailed_test.png")
print(p)
dev.off()

p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey54", alpha=0.2, xlim = c(-15, 10)) +
	# stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(-15, -10)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(10, 15)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	# geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	# annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.005, label = "paste(mu[1] - mu[2], \"\")", parse = TRUE, size=7) +
	# annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.005, label = "paste(mu[2] - mu[1], \"\")", parse = TRUE, size=7) +
	geom_segment(aes(x = -12, y = dnorm(-6, mean=0, sd=4)+0.01, xend = -7, yend = dnorm(-12, mean=0, sd=4)+0.01), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = 12, y = dnorm(12, mean=0, sd=4)+0.01, xend = 11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	# annotate("text", x = 0, y = dnorm(12, mean=0, sd=4)+0.01, label = "paste(1- alpha, \"\")", parse = TRUE, size=7) +
	# geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	# geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	# annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	# annotate('text', x = -10, y = -0.005, label = "-z", parse=T, size=5) +
	annotate('text', x = 10, y = -0.005, label = "z", parse=T, size=5) +
	# geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
	theme_void()

png("One-tailed_test.png")
print(p)
dev.off()



 