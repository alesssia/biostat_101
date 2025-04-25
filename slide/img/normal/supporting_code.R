clean()
set.seed(42)

library(ggplot2)
library(gridExtra)
library(scales)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


setwd("/Users/visconti/Documents/Teaching/biostat_101/slide/img/normal")

load("/Users/visconti/Documents/Research/2015/random/avisconti/birthWeight/data/BirthData.RData")
admin <- read.csv("/Users/visconti/Documents/Research/2015/random/avisconti/birthWeight/data/birth/admin.csv")

df <- merge(df, admin[, c("STUDY_NO", "DATE_BORN")], by.x="IID",  by.y="STUDY_NO", all=FALSE)
df$DATE_BORN <- sapply(df$DATE_BORN, function(d) format(as.Date(d, "%d/%m/%y"), "19%y-%m-%d") )


df <- df[!is.na(df$Bweight), ]

nrow(df)

min(as.Date(df$DATE_BORN))
max(as.Date(df$DATE_BORN))

df$Bweight <- df$Bweight * 1000

df1 <- df

df <- data.frame(Bweight=sample(df1$Bweight, 1000000, replace=TRUE))

bw <- 250
n_obs <- nrow(df)

p <- ggplot(df, aes(x = Bweight)) + geom_histogram(aes(y =..count..), colour = "black", fill = "gray74", binwidth = bw ) + graphic.settings + xlab("Peso alla nascita (g)") + ylab("") + theme(legend.position="none") + scale_y_continuous(labels = label_number( suffix = "k", scale = 1e-3)) + geom_segment(aes(x = 2404, y = -10, xend = 2404, yend = 171000), colour="magenta", linewidth=1.5) + labs(caption="Dati simulati a partire da dati reali, bin size: 250g") + theme(plot.caption = element_text(size = 10)) 

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_hist.png", bg = "transparent")
print(p)
dev.off()

p1 <- p + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1)

p1 <- p1 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_hist_normale.png", bg = "transparent")
print(p1)
dev.off()

fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight))
dd <- unique(data.frame(x=df$Bweight, y=fun(df$Bweight)*bw*n_obs) )

gety <- function(v) dd$y[which(abs(dd$x - v) == min(abs(dd$x - v)))]

p <- ggplot(df, aes(x = Bweight)) + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1) + graphic.settings + xlab("Peso alla nascita (g)") + ylab("") + theme(legend.position="none") + scale_y_continuous(labels = label_number( suffix = "k", scale = 1e-3)) + geom_segment(aes(x = 2404, y = -10, xend = 2404, yend = 171000), colour="magenta", linewidth=1.5) + labs(caption="Dati simulati a partire da dati reali, bin size: 250g") + theme(plot.caption = element_text(size = 10)) 

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale.png", bg = "transparent")
print(p)
dev.off()

p1 <- p + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1, xlim = c(min(df$Bweight), 1500), geom = "area", fill="magenta", alpha=0.4) + geom_segment(aes(x = 1500, y = 0, xend = 1500, yend = gety(1500)), colour="black", lwd=1)

p1 <- p1 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_area.png", bg = "transparent")
print(p1)
dev.off()


p2 <- p + geom_segment(aes(x = 2404, y = 0, xend = 2404-580, yend = 0), arrow = arrow(length = unit(0.2, "cm"), ends="last"), colour="darkgreen", lwd=1) + geom_segment(aes(x = 2404, y = 0, xend = 2404+580, yend = 0), arrow = arrow(length = unit(0.2, "cm"), ends="last"), colour="darkgreen", lwd=1)


p2 <- p2 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_zscore.png", bg = "transparent")
print(p2)
dev.off()


p3 <- p2 + geom_segment(aes(x = 1454, y = 25000, xend = 1454, yend = 0), arrow = arrow(length = unit(0.2, "cm"), ends="last"), colour="black", lwd=1)

p3 <- p3 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("Twin_BW_normale_zscore_annotated.png", bg = "transparent")
print(p3)
dev.off()


clean()
set.seed(42)

library(ggplot2)
library(gridExtra)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


sd <- 1
mean <- 4
start <- 0
end <- 8

p <-   ggplot(data = data.frame(x = c(start, end)), aes(x)) +
    
	#Areas + normal
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd),  xlim = c(start, mean-0.67*sd)) +
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd),  xlim = c(mean-0.67*sd, mean+0.67*sd)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), geom = "area", fill="springgreen4", alpha=0.6, xlim = c(mean+0.67*sd, end)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), colour="black") + ylab("") +
	geom_segment(aes(x = start, y = 0, xend = end, yend = 0), colour="black") +
	
	#area borders
	geom_segment(aes(x = mean, y = 0, xend = mean, yend = dnorm(mean, mean=mean, sd = sd)), colour="black", linetype="dashed") +
	geom_segment(aes(x = mean-0.67*sd, y = 0, xend = mean-0.67*sd, yend = dnorm(mean-0.67*sd, mean=mean, sd = sd)), colour="black", linetype="dashed") +
	geom_segment(aes(x = mean+0.67*sd, y = 0, xend = mean+0.67*sd, yend = dnorm(mean+0.67*sd, mean=mean, sd = sd)), colour="black", linetype="dashed") +
	
	#X axis
	annotate("text", x = mean-0.67*sd, y = -0.01, label = "Q1", parse = FALSE, size=4) +
	annotate("text", x = mean,    y = -0.01, label = "Q2", parse = FALSE, size=4) +
	annotate("text", x = mean+0.67*sd, y = -0.01, label = "Q3", parse = FALSE, size=4) +
	
	#Arrows
	geom_segment(aes(x = start, y = -0.03, xend = mean-0.67*sd, yend = -0.03), arrow = arrow(length = unit(0.2, "cm"), ends="both"), colour="black") +
	annotate("text", x = (mean-0.67*sd)/2, y=-0.05, label = "25%", parse = FALSE, size=5) +
	
	geom_segment(aes(x = mean-0.67*sd, y = -0.03, xend = mean, yend = -0.03), arrow = arrow(length = unit(0.2, "cm"), ends="both"), colour="black") +
	annotate("text", x = mean-(0.67*sd/2), y=-0.05, label = "25%", parse = FALSE, size=5) + 
	
	geom_segment(aes(x = mean, y = -0.03, xend = mean+0.67*sd, yend = -0.03), arrow = arrow(length = unit(0.2, "cm"), ends="both"), colour="black") +
	annotate("text", x = mean+(0.67*sd/2), y=-0.05, label = "25%", parse = FALSE, size=5) +
	
	geom_segment(aes(x = mean+0.67*sd, y = -0.03, xend = end, yend = -0.03), arrow = arrow(length = unit(0.2, "cm"), ends="both"), colour="black") +
	annotate("text", x = mean+(mean+0.67*sd)/2, y=-0.05, label = "25%", parse = FALSE, size=5)
	
	
p <- p + xlim(start, end) + scale_y_continuous(breaks = NULL) + theme_void()

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("Ex_Q3.png", width=600, height=250, bg = "transparent")
print(p)
dev.off()


sd <- 2
mean <- 4
start <- -8
end <- 12

p <-   ggplot(data = data.frame(x = c(start, end)), aes(x)) +
 	   stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), colour="darkmagenta") +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = sd), colour="gray44") +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="darkgreen") +
	   
	   geom_segment(aes(x = mean, y = dnorm(mean, mean=mean, sd = sd), xend = 0, yend = dnorm(mean, mean=mean, sd = sd)), arrow = arrow(length = unit(0.2, "cm")), colour="black") +
	   
	   
	   annotate("text", x = mean, y=dnorm(mean, mean=mean, sd = sd)+0.02, label = "paste(N(mu, sigma^2), \"\")", parse = TRUE, size=5, colour="darkmagenta") +
	   annotate("text", x = 0, y=dnorm(0, mean=0, sd = sd)+0.02, label = "paste(N(0, sigma^2), \"\")", parse = TRUE, size=5, colour="gray44") +
	   annotate("text", x = 0, y=dnorm(0, mean=0, sd = 1)+0.02, label = "paste(N(0, 1), \"\")", parse = TRUE, size=5, colour="darkgreen")  +
	   
	   geom_segment(aes(x = start, y = -0.01, xend = end, yend = -0.01), colour="black") +
	   geom_segment(aes(x = 0, y = -0.01, xend = 0, yend = -0.02), colour="black") +
	   geom_segment(aes(x = mean, y = -0.01, xend = mean, yend = -0.02), colour="black") + 
	   
	   geom_segment(aes(x = mean, y = 0, xend = mean, yend = dnorm(mean, mean=mean, sd = sd)), colour="gray74", linetype="dashed") +
	   geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd = 1)), colour="gray74", linetype="dashed") +
	   
	   annotate("text", x = mean, y=-0.031, label = "paste(mu, \"\")", parse = TRUE, size=5, colour="black") +
	   annotate("text", x = 0, y=-0.031, label = "0", parse = FALSE, size=5, colour="black") +
	   
	   scale_y_continuous(breaks = NULL) + theme_void()


p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))


png("n2z.png", width=500, height=250, bg = "transparent")
print(p)
dev.off()



start <- -4
end <- 4

p <-   ggplot(data = data.frame(x = c(start, end)), aes(x)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), geom = "area", fill="magenta", alpha=0.4, xlim = c(start, -1.56)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), xlim = c(-1.56, end)) + 
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="black") +
	   
	   geom_segment(aes(x = -1.56, y = 0, xend = -1.56, yend = dnorm(-1.56, mean=0, sd = 1)), colour="black") +
	   geom_segment(aes(x = -1.56, y = 0, xend = start, yend = 0), colour="black") +
	     
	   geom_segment(aes(x = start, y = -0.01, xend = end, yend = -0.01), colour="black") +
	   geom_segment(aes(x = 0, y = -0.01, xend = 0, yend = -0.02), colour="black") +
	   geom_segment(aes(x = -1.56, y = -0.01, xend = -1.56, yend = -0.02), colour="black") + 
	   
	   annotate("text", x = -1.56, y = -0.031, label = "z = -1.56", parse = FALSE, size=4) +
	   annotate("text", x = 0, y = -0.031, label = "0", parse = FALSE, size=4) +
	   
	   scale_y_continuous(breaks = NULL) + theme_void()

p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_area_z.png", width=300, height=250, bg = "transparent")
print(p)
dev.off()

p1 <- ggplot(data = data.frame(x = c(start, end)), aes(x)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), geom = "area", fill="magenta", alpha=0.4, xlim = c(1.56, end)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), xlim = c(start, 1.56)) + 
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="black") +
	   
	   geom_segment(aes(x = 1.56, y = 0, xend = 1.56, yend = dnorm(1.56, mean=0, sd = 1)), colour="black") +
	   geom_segment(aes(x = 1.56, y = 0, xend = end, yend = 0), colour="black") +
	     
	   geom_segment(aes(x = start, y = -0.01, xend = end, yend = -0.01), colour="black") +
	   geom_segment(aes(x = 0, y = -0.01, xend = 0, yend = -0.02), colour="black") +
	   geom_segment(aes(x = 1.56, y = -0.01, xend = 1.56, yend = -0.02), colour="black") + 
	   
	   annotate("text", x = 0, y = -0.031, label = "0", parse = FALSE, size=4) +
	   annotate("text", x = 1.56, y = -0.031, label = "z = 1.56", parse = FALSE, size=4) +
	   
	   scale_y_continuous(breaks = NULL) + theme_void()


p1 <- p1 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_area_z_simmetrica.png", width=300, height=250, bg = "transparent")
print(p1)
dev.off()


p2 <- p1 + geom_segment(aes(x = -3, y = dnorm(-1, mean=0, sd = 1), xend = -0.5, yend = dnorm(-3, mean=0, sd = 1)+0.1), arrow = arrow(length = unit(0.2, "cm"), ends="last"), colour="black") +
   	   annotate("text", x = -3, y=dnorm(-1, mean=0, sd = 1) + 0.01, label = "Area nelle tavole", parse = FALSE, size=3) 


p2 <- p2 +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_area_z_1-alpha.png", width=300, height=250, bg = "transparent")
print(p2)
dev.off()


p <-   ggplot(data = data.frame(x = c(start, end)), aes(x)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), geom = "area", fill="magenta", alpha=0.4, xlim = c(start, 0.17)) +
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), xlim = c(0.17, end)) + 
	   stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="black") +
	   
	   geom_segment(aes(x = 0.17, y = 0, xend = 0.17, yend = dnorm(0.17, mean=0, sd = 1)), colour="black") +
	   geom_segment(aes(x = 0.17, y = 0, xend = start, yend = 0), colour="black") +
	     
	   geom_segment(aes(x = start, y = -0.01, xend = end, yend = -0.01), colour="black") +
	   geom_segment(aes(x = 0, y = -0.01, xend = 0, yend = -0.02), colour="black") +
	   geom_segment(aes(x = 0.17, y = -0.01, xend = 0.17, yend = -0.04), colour="black") + 
	   
	   annotate("text", x = 0.17, y = -0.051, label = "z = 0.17", parse = FALSE, size=4) +
	   annotate("text", x = 0, y = -0.031, label = "0", parse = FALSE, size=4) +
	   
	   scale_y_continuous(breaks = NULL) + theme_void()


p <- p +  theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_))

png("Twin_BW_normale_area_z_ex.png", width=300, height=250, bg = "transparent")
print(p)
dev.off()