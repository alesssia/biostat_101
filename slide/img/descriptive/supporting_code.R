clean()
set.seed(42)

library(ggplot2)
library(tidyverse)
library(dplyr)
library(waffle)
library(ggbeeswarm)
library(gghalves)
library(ggrepel)
library(patchwork)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))

setwd("/Users/visconti/Documents/Teaching/biostat_101/slide/img/descriptive/")



#altezza
set.seed(42)
df <- read.csv(file = "/Users/visconti/Documents/Resources/twinsUK/BMI_130720.csv")
df <- na.omit(df)
df <- df[sample(1:nrow(df), 1000), ]

df <- df[df$Height < 200, ]

avg <- mean(df$Height)
sdev <- sd(df$Height)

p <- ggplot(df, aes(x=Height, y=10)) + geom_point(position = "jitter") + ylim(c(9.4,10.6))
p <- p + geom_segment(aes(x = avg, y = 10.5, xend = avg, yend = 9.5), size=2, colour="darkgreen") + geom_segment(aes(x = avg-3, y = 9.5, xend = 140, yend = 9.5), arrow = arrow(length = unit(0.5, "cm")), size=2, colour="darkmagenta") + geom_segment(aes(x = avg+3, y = 9.5, xend = 190, yend = 9.5), arrow = arrow(length = unit(0.5, "cm")), size=2, colour="darkmagenta") 
p <- p + graphic.settings + theme(legend.position="none", legend.title = element_blank()) + theme(axis.text.y=element_blank()) + xlab("Altezza (cm)") + ylab("") + scale_y_discrete(breaks=NULL) + 
	theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("descriptive.png", width=500, height=250, bg = "transparent")
print(p)
dev.off()

xmin <- sapply(0:14, function(i) 0+i*3)
xmax <- sapply(0:14, function(i) 3+i*3)

rects <- data.frame(xmin=xmin, xmax=xmax,
					ymin=rep(0, 15), ymax=rep(3, 15),
					boxcol=c(rep("a", 7), "b", rep("c", 7)),
					label=c(5, 18, 20, 22, 24, 25, 25, 26, 26, 26, 27, 27, 28, 29, 30),
					x=sapply(0:14, function(i) 0+i*3+1.5), y=1.5)
	

p <- ggplot(rects, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, label=label)) + geom_rect(aes(fill = boxcol), alpha = 0.4, color = "black") + scale_fill_manual(values=(c("magenta3", "gray85", "springgreen3"))) + geom_text(aes(x=x, y=y), size=7)+ theme_void()  + theme(legend.position="none", legend.title = element_blank())  

p <- p + geom_segment(aes(x = xmin[8]+1.5, y = -3, xend = xmin[8]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[8]+1.5, y = -4, label = "Mediana", parse = FALSE, size=7) 

p <- p + geom_segment(aes(x = 0, y = 4, xend = xmax[7], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[4]+1.5, y = 5, label = "50% inferiore", parse = FALSE, size=7) + geom_segment(aes(x = xmin[9], y = 4, xend = xmax[15], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[12]+1.5, y = 5, label = "50% superiore", parse = FALSE, size=7)


p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("median.png", width=800, height=180, bg = "transparent")
print(p)
dev.off()


rects <- data.frame(xmin=xmin, xmax=xmax,
					ymin=rep(0, 15), ymax=rep(3, 15),
					boxcol=c(rep("a", 3), "b", rep("c", 3), "b", rep("d", 3), "b", rep("e", 3)),
					label=c(5, 18, 20, 22, 24, 25, 25, 26, 26, 26, 27, 27, 28, 29, 30),
					x=sapply(0:14, function(i) 0+i*3+1.5), y=1.5)
	

p <- ggplot(rects, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, label=label)) + geom_rect(aes(fill = boxcol), alpha = 0.4, color = "black") + scale_fill_manual(values=(c("magenta1", "gray85","magenta4",  "springgreen1", "springgreen4"))) + geom_text(aes(x=x, y=y), size=7)+ theme_void()  + theme(legend.position="none", legend.title = element_blank())  

p <- p + geom_segment(aes(x = xmin[8]+1.5, y = -3, xend = xmin[8]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[8]+1.5, y = -4, label = "Mediana (Q2)", parse = FALSE, size=7) +
	     geom_segment(aes(x = xmin[4]+1.5, y = -3, xend = xmin[4]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[4]+1.5, y = -4, label = "Q1", parse = FALSE, size=7) +
	     geom_segment(aes(x = xmin[12]+1.5, y = -3, xend = xmin[12]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[12]+1.5, y = -4, label = "Q3", parse = FALSE, size=7) 

p <- p + geom_segment(aes(x = 0, y = 4, xend = xmax[3], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[2]+1.5, y = 5, label = "25%", parse = FALSE, size=7) + geom_segment(aes(x = xmin[5], y = 4, xend = xmax[7], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[6]+1.5, y = 5, label = "25%", parse = FALSE, size=7) +
	geom_segment(aes(x = xmin[9], y = 4, xend = xmax[11], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[10]+1.5, y = 5, label = "25%", parse = FALSE, size=7) + geom_segment(aes(x = xmin[13], y = 4, xend = xmax[15], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[14]+1.5, y = 5, label = "25%", parse = FALSE, size=7)


p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("quartiles.png", width=800, height=180, bg = "transparent")
print(p)
dev.off()


p <- ggplot(rects, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, label=label)) + geom_rect(aes(fill = boxcol), alpha = 0.4, color = "black") + scale_fill_manual(values=(c("magenta1", "gray85","magenta4",  "springgreen1", "springgreen4"))) + geom_text(aes(x=x, y=y), size=7)+ theme_void()  + theme(legend.position="none", legend.title = element_blank())  

p <- p + geom_segment(aes(x = 0, y = 4, xend = xmax[3], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="first"), size=0.5, colour="black") + annotate("text", x = xmin[2]+1.5, y = 5, label = "25%", parse = FALSE, size=7) +
	   geom_segment(aes(x = 0, y = 6, xend = xmax[7], yend = 6), arrow = arrow(length = unit(0.5, "cm"), ends="first"), size=0.5, colour="black") + annotate("text", x = xmin[4]+1.5, y = 7, label = "50%", parse = FALSE, size=7) +
	   geom_segment(aes(x = 0, y = 8, xend = xmax[11], yend = 8), arrow = arrow(length = unit(0.5, "cm"), ends="first"), size=0.5, colour="black") + annotate("text", x = xmax[6], y = 9, label = "75%", parse = FALSE, size=7) 

p <- p + geom_segment(aes(x = xmin[8]+1.5, y = -3, xend = xmin[8]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[8]+1.5, y = -4, label = "paste(P[50], \"\")", parse = TRUE, size=7) +
	     geom_segment(aes(x = xmin[4]+1.5, y = -3, xend = xmin[4]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[4]+1.5, y = -4, label = "paste(P[25], \"\")", parse = TRUE, size=7) +
	     geom_segment(aes(x = xmin[12]+1.5, y = -3, xend = xmin[12]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[12]+1.5, y = -4, label = "paste(P[75], \"\")", parse = TRUE, size=7) 


 p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

 png("percentile.png", width=800, height=250, bg = "transparent")
 print(p)
 dev.off()

p <- ggplot(rects, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, label=label)) + geom_rect(aes(fill = boxcol), alpha = 0.4, color = "black") + scale_fill_manual(values=(c("magenta1", "gray85","magenta4",  "springgreen1", "springgreen4"))) + geom_text(aes(x=x, y=y), size=7)+ theme_void()  + theme(legend.position="none", legend.title = element_blank())  

p <- p + geom_segment(aes(x = xmin[5], y = 4, xend = xmax[11], yend = 4), arrow = arrow(length = unit(0.5, "cm"), ends="both"), size=0.5, colour="black") + annotate("text", x = xmin[8]+1.5, y = 5, label = "50% delle osservazioni", parse = FALSE, size=7) 

p <- p + geom_segment(aes(x = xmin[8]+1.5, y = -3, xend = xmin[8]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[8]+1.5, y = -4, label = "Mediana (Q2)", parse = FALSE, size=7) +
	     geom_segment(aes(x = xmin[4]+1.5, y = -3, xend = xmin[4]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[4]+1.5, y = -4, label = "Q1", parse = FALSE, size=7) +
	     geom_segment(aes(x = xmin[12]+1.5, y = -3, xend = xmin[12]+1.5, yend = -0.5), arrow = arrow(length = unit(0.5, "cm")), size=0.7, colour="black") + annotate("text", x = xmin[12]+1.5, y = -4, label = "Q3", parse = FALSE, size=7) 


 p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

 png("iqr.png", width=800, height=180, bg = "transparent")
 print(p)
 dev.off()



p <- ggplot(rects, aes(xmin=xmin, xmax=xmax, ymin=ymin, ymax=ymax, label=label)) + geom_rect(alpha = 0.4, color = "black", fill='springgreen3') + geom_text(aes(x=x, y=y), size=7)+ theme_void()  + theme(legend.position="none", legend.title = element_blank())  

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("range.png", width=800, height=50, bg = "transparent")
print(p)
dev.off()



mean <- 0
start <- -10
end <- 10


p <-  ggplot(data = data.frame(x = c(start, end)), aes(x)) +
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), geom = "area", fill="grey74", alpha=0.4, xlim = c(start, end)) +
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="black") + 
   
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 2), geom = "area", fill="darkgreen", alpha=0.4, xlim = c(start, end)) +
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 2), colour="black") +
   
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 3), geom = "area", fill="magenta", alpha=0.4, xlim = c(start, end)) +
   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 3), colour="black") +
   
   geom_segment(aes(x = start, y = 0, xend = end, yend = 0), colour="black") +
	
   geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd = 1)), colour="black", linetype="dashed") +

   scale_y_continuous(breaks = NULL) + theme_void()


p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("sd.png", width=500, height=250, bg = "transparent")
print(p)
dev.off()

yanchor <- dnorm(50, mean=50, sd = 2)

p_symmetrical <-  ggplot(data = data.frame(x = c(40, 60)), aes(x)) +
   stat_function(fun = dnorm, n = 101, args = list(mean = 50, sd = 2), colour="black") +
   
   geom_segment(aes(x = 40, y = 0, xend = 60, yend = 0), colour="black") +
	
   geom_segment(aes(x = 50, y = 0, xend = 50, yend = dnorm(50, mean=50, sd = 2)), colour="black", linetype="dashed") +
   annotate("text", x = 50, y = c(yanchor+0.01, yanchor+0.02, yanchor+0.03), label = c("Moda", "Mediana", "Media"), parse = FALSE, size=5) +
   annotate("text", x = 50, y = c(-0.01, -0.02, -0.033), label = c("Distribuzione", "simmetrica", ""), parse = FALSE, size=5) +

   scale_y_continuous(breaks = NULL) + theme_void() +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

mode_p <- which(max(dlnorm(1:130, meanlog=3.5, sdlog = 0.5)) == dlnorm(1:130, meanlog=3.5, sdlog = 0.5))
p_asymmetrical_positive <-   ggplot(data = data.frame(x = c(2, 130)), aes(x)) +
      stat_function(fun = dlnorm, n = 101, args = list(meanlog = 3.5, sdlog = 0.5), colour="black") +
   
      geom_segment(aes(x = 0, y = 0, xend = 130, yend = 0), colour="black") +
	
      geom_segment(aes(x = 50, y = 0, xend = 50, yend = dlnorm(50, meanlog=3.5, sdlog = 0.5)), colour="black", linetype="dashed") +
      annotate("text", x = 55, y = dlnorm(50, meanlog=3.5, sdlog = 0.5)+0.00095, label = "Media", parse = FALSE, size=5) +
   
      geom_segment(aes(x = mode_p, y = 0, xend = mode_p, yend = dlnorm(mode_p, meanlog=3.5, sdlog = 0.5)), colour="black",  linetype="dotted") +
      annotate("text", x = mode_p, y = dlnorm(mode_p, meanlog=3.5, sdlog = 0.5)+0.00095, label = "Moda", parse = FALSE, size=5) + 
   
      geom_segment(aes(x = 33, y = 0, xend = 33, yend = dlnorm(33, meanlog=3.5, sdlog = 0.5)), colour="black",  linetype="dotted") +
      annotate("text", x = 41, y = dlnorm(33, meanlog=3.5, sdlog = 0.5)+0.00055, label = "Mediana", parse = FALSE, size=5) +
   
      annotate("text", x = 50, y = c(-0.001, -0.0025, -0.004), label = c("Distribuzione", "asimmetrica a destra", "(o positiva)"), parse = FALSE, size=5) +

      scale_y_continuous(breaks = NULL) + theme_void() +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


rdlnorm <- function(x, meanlog, sdlog) dlnorm(130-x, meanlog=meanlog, sdlog=sdlog)	  
mode_n <- which(max(rdlnorm(1:130, meanlog=3.5, sdlog = 0.5)) == rdlnorm(1:130, meanlog=3.5, sdlog = 0.5))

p_asymmetrical_negative <-   ggplot(data = data.frame(x = c(2, 130)), aes(x)) +
	     stat_function(fun = rdlnorm, n = 101, args = list(meanlog = 3.5, sdlog = 0.5), colour="black") +
   
	     geom_segment(aes(x = 0, y = 0, xend = 130, yend = 0), colour="black") +
	
	     geom_segment(aes(x = 130-50, y = 0, xend = 130-50, yend = rdlnorm(130-50, meanlog=3.5, sdlog = 0.5)), colour="black", linetype="dashed") +
	     annotate("text", x = 75, y = dlnorm(50, meanlog=3.5, sdlog = 0.5)+0.00095, label = "Media", parse = FALSE, size=5) +
   
	     geom_segment(aes(x = mode_n, y = 0, xend = mode_n, yend = rdlnorm(mode_n, meanlog=3.5, sdlog = 0.5)), colour="black", linetype="dotted") +
	     annotate("text", x = mode_n, y = rdlnorm(mode_n, meanlog=3.5, sdlog = 0.5)+0.00095, label = "Moda", parse = FALSE, size=5) + 
   
	     geom_segment(aes(x = 130-33, y = 0, xend = 130-33, yend = rdlnorm(130-33, meanlog=3.5, sdlog = 0.5)), colour="black",  linetype="dotted") +
	     annotate("text", x = 130-41, y = dlnorm(33, meanlog=3.5, sdlog = 0.5)+0.00055, label = "Mediana", parse = FALSE, size=5) +
   
	     annotate("text", x = 130-50, y = c(-0.001, -0.0025, -0.004), label = c("Distribuzione", "asimmetrica a sinistra", "(o negativa)"), parse = FALSE, size=5) +

	     scale_y_continuous(breaks = NULL) + theme_void() +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


p <- p_asymmetrical_positive + p_symmetrical  + p_asymmetrical_negative & theme(plot.background = element_rect(fill='transparent'), legend.background = element_rect(fill = 'transparent') )

png("Relationship_between_mean_and_median_under_different_skewness.png", width=900, height=350, bg = "transparent")
print(p)
dev.off()


set.seed(42)
mm <- data.frame(dist="mixture", x=rnorm(1000, rep(c(-1, 1), each = 10) * sqrt(0.8), sqrt(0.1)))

bmode <- table(round(mm$x, 3))
bmode <- as.numeric(names(bmode[(which(bmode == max(bmode)))]))

p_bimodal <-  ggplot(mm, aes(x = x)) + geom_density() +
   
   geom_segment(aes(x = -2, y = 0, xend = 2, yend = 0), colour="black") +
	
   geom_segment(aes(x = bmode, y = 0, xend = bmode, yend = dnorm(sqrt(0.084), mean=sqrt(0.5), sd = sqrt(0.1))), colour="black", linetype="dashed") +
   annotate("text", x = bmode, y = dnorm(sqrt(0.089), mean=sqrt(0.5), sd = sqrt(0.1))+0.015, label = "Moda[1]", parse = TRUE, size=5) +
   geom_segment(aes(x = -bmode, y = 0, xend = -bmode, yend = dnorm(sqrt(0.082), mean=sqrt(0.5), sd = sqrt(0.1))), colour="black", linetype="dashed") +
   annotate("text", x = -bmode, y = dnorm(sqrt(0.09), mean=sqrt(0.5), sd = sqrt(0.1))+0.015, label = "Moda[2]", parse = TRUE, size=5) +

   scale_y_continuous(breaks = NULL) + theme_void() +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("Bimodal.png", width=500, height=250, bg = "transparent")
print(p_bimodal)
dev.off()



# Examples of outliers in calculating median and mean
pp <- data.frame(x=c(6, 34, 40, 55, 175, 0, 0), y=c(rep(0, 5), 1, -1))

p <- ggplot(pp, aes(x=x, y=y, label=x)) + geom_point(size=3) + geom_segment(aes(x = 0, y = 0, xend = 180, yend = 0), size=1) +  geom_text(vjust = 2, size=4) 
p <- p +  geom_segment(aes(x = 40, y = -0.3, xend = 40, yend = -0.1), arrow = arrow(length = unit(0.5, "cm")), size=1, colour="darkmagenta") + annotate('text', x = 40, y = -0.35, label = "Mediana", parse=T, size=5, colour="darkmagenta")
p <- p + ylim(-0.4, 0.4) + graphic.settings + theme(legend.position="none", legend.title = element_blank()) + theme(axis.text.y=element_blank()) + xlab("") + ylab("")  + theme(panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank(), panel.grid.major.y = element_blank(), panel.grid.minor.y = element_blank(), axis.ticks.y=element_blank(), panel.border = element_blank()) + scale_x_discrete(breaks=NULL) 

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("median_outlier.png", width=500, height=250, bg = "transparent")
print(p)
dev.off()

p <- p +  geom_segment(aes(x = 62, y = -0.3, xend = 62, yend = -0.1), arrow = arrow(length = unit(0.5, "cm")), size=1, colour="darkgreen") + annotate('text', x = 62, y = -0.35, label = "Media", parse=T, size=5, colour="darkgreen")


png("mean_outlier.png", width=500, height=250, bg = "transparent")
print(p)
dev.off()



### Sexual partner in Britain  
partner.counts <-read.csv("02-4-sexual-partners-counts-x.csv", header=TRUE) # reads data into data frame

attach(partner.counts)

#Actual number of respondent
Men.data=rep(NumPartners,MenCount)
Women.data=rep(NumPartners,WomenCount)

#Number of possible responses
Ncats=length(NumPartners)

partners = data.frame( NumPartners2=c(NumPartners,NumPartners), Percent=c(MenPercent,WomenPercent), Gender=c(rep("M",Ncats),rep("F",Ncats)) )
partners$Percent[partners$Gender == "F"] <- -partners$Percent[partners$Gender == "F"]

p <- ggplot(partners, aes(x=NumPartners2)) + geom_bar(aes(y=Percent, fill=Gender), stat = "identity") +  geom_text(aes(x = 50, y = -5, label = "Donne 35-44", color = "#FC8D62", hjust=0, size=5)) + geom_text(aes(x = 50, y = 5, label = "Uomini 35-44", color = "#66C2A5", hjust=0, size=5))
p <- p + xlim(0, 61) + scale_colour_brewer(palette = "Set2") + graphic.settings + xlab("Numero di partner eterosessuali riportati") + ylab("Percentuale") + theme(legend.position="none") + ggtitle("", subtitle="Osservazioni > 60 sono state rimosse") 


png("British_sex_partner_histogram.png", width = 480*1.5, height = 480)
print(p)
dev.off() 


## Children surgery
child.1991 <- read.csv("02-5-child-heart-surgery-1991-x.csv") # read data into dataframe 


p <- ggplot(child.1991, aes(x=reorder(Hospital,-Deaths), y=Deaths)) + geom_bar(stat = "identity", fill="gray74", colour="black") 
p <- p + coord_flip() + scale_y_continuous() # breaks every two-count
p <- p + theme(legend.position="none") + labs(y="Bambini <1 anno morti (N)", x="") + graphic.settings
 

png("Children_death.png")
print(p)
dev.off() 
  
p <- ggplot(child.1991, aes(x=reorder(Hospital,-Deaths), y=Operations)) + geom_bar(stat = "identity", fill="gray74", colour="black") 
p <- p + coord_flip() + scale_y_continuous() # breaks every two-count
p <- p + theme(legend.position="none") + labs(y="Interventi bambini <1 anno (N)", x="") + graphic.settings
 

png("Children_surgery.png")
print(p)
dev.off() 


p <- ggplot(child.1991, aes(x=Operations, y=Deaths, label=Hospital)) + geom_point(size=3)  + geom_label_repel(aes(label = Hospital), box.padding   = 0.35, point.padding = 0.5, segment.color = 'grey50') + labs(x="Interventi (N)", y = "Morti (N)", title="Morti in bambini <1 anno, 1991-1995") + graphic.settings + geom_smooth(method="lm", se=FALSE, col="magenta", linetype="dotted", ldw=1.5)



png("Children_death_vs_surgery.png")
print(p)
dev.off() 


#Pool from which to sample height
set.seed(42)

n=24
max.score=7
pool.h <- seq(150, 180, by=0.1)
pool.s <- seq(0, max.score, by=0.1)
names <- randomNames::randomNames(100, return.complete.data=TRUE)
names <- names[names$gender == 0, ]
names <- paste(names$first_name, names$last_name)
names <- data.frame(names=names, length=nchar(names))
names <- names[order(names$length), ]

df <- data.frame(h=sample(pool.h, n, replace=T), s=sample(pool.s, n, replace=T), n=names$names[1:n])
df <- rbind(df, c(211, 23.4, "Giannis Antetokounmpo"), c(188, 25.1, "Damian Lillard"))
df$h <- as.numeric(df$h)
df$s <- as.numeric(df$s)

p <- ggplot(df, aes(x=h, y=s, label=n)) + geom_point(size=3)  + geom_label_repel(aes(label = n), box.padding   = 0.35, point.padding = 0.5, segment.color = 'grey50') + labs(x="Altezza (cm)", y = "Punteggio medio", title="", subtitle="Dataset simulato") + graphic.settings + geom_smooth(method="lm", se=FALSE, col="magenta", linetype="dotted", ldw=1.5)

png("Basketball.png")
print(p)
dev.off() 

p <- ggplot(df[1:n, ], aes(x=h, y=s, label=n)) + geom_point(size=3)  + geom_label_repel(aes(label = n), box.padding   = 0.35, point.padding = 0.5, segment.color = 'grey50') + labs(x="Altezza (cm)", y = "Punteggio medio", title="", subtitle="Dataset simulato") + graphic.settings  + geom_smooth(method="lm", se=FALSE, col="magenta", linetype="dotted", ldw=1.5) + xlim(150, 190) + ylim(0, max.score+1)


png("Basketball_noout.png")
print(p)
dev.off()

print(cor(df$h, df$s))
print(cor(df$h[1:n], df$s[1:n]))
  
  
#Exercize  
gym <- c(rep(0, 20), rep(5, 4), rep(6, 6), rep(7,7), rep(8, 3), 9)  
gym <- data.frame(p=1:length(gym), hours=gym)

p <- ggplot(gym, aes(x=hours)) + geom_histogram(bins=10, fill="darkgreen", binwidth=1, color="black", alpha=0.4) + graphic.settings + xlab("Ore di palestra alla settimana") + ylab("Numero") + ggtitle("")


png("gym.png")
print(p)
dev.off()

# Variability

head_circ <- c(43, rep(44,3), rep(45, 4), rep(46, 5), rep(47,3), rep(48,2))
head_circ <- data.frame(p=1:length(head_circ), hc=head_circ)

p <- ggplot(head_circ, aes(x=hc)) + geom_histogram(bins=10, fill="darkgreen", binwidth=1, color="black", alpha=0.4) + graphic.settings + xlab("Circonferenza cranica (cm)") + ylab("Numero") + scale_x_continuous(breaks=min(head_circ$hc):max(head_circ$hc))


png("head_circiference_doll.png", width=480, height=250)
print(p)
dev.off()


head_circ <- c(41, rep(42, 2), rep(43,3), rep(44,3), rep(45, 5), rep(46, 6), rep(47,4), rep(48,4), rep(49,3), rep(50,2), 51, 52)
head_circ <- data.frame(p=1:length(head_circ), hc=head_circ)

p <- ggplot(head_circ, aes(x=hc)) + geom_histogram(bins=10, fill="darkgreen", binwidth=1, color="black", alpha=0.4) + graphic.settings + xlab("Circonferenza cranica (cm)") + ylab("Numero") + scale_x_continuous(breaks=min(head_circ$hc):max(head_circ$hc))

png("head_circiference_children.png", width=480, height=250)
print(p)
dev.off()

head_circ_2 <- c(33, rep(34, 2), rep(35, 3), rep(36, 5), rep(37, 7), rep(38, 6), rep(39, 4), rep(40, 3), rep(41, 2), 42, 43)+6
head_circ <- rbind(data.frame(head_circ, study="A"), data.frame(p=1:length(head_circ_2), hc=head_circ_2, study="B"))

p <- ggplot(head_circ, aes(x=hc, fill=study)) + geom_histogram(binwidth=1, color="black", alpha=0.4, position = 'identity') + scale_fill_manual("Study", values=c("darkgreen", "magenta")) + graphic.settings + xlab("Circonferenza cranica (cm)") + ylab("Numero") + scale_x_continuous(breaks=min(head_circ$hc):max(head_circ$hc)) + theme(legend.position="none")

png("head_circiference_children_groups.png", width=480, height=250)
print(p)
dev.off()