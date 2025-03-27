clean()
set.seed(42)

library(ggplot2)
library(gridExtra)

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

p <- ggplot(df, aes(x = Bweight)) + geom_histogram(aes(y =..count..), colour = "black", fill = "gray74", binwidth = bw )  + graphic.settings + xlab("Peso alla nascita (g)") + ylab("Counts") + ggtitle("Dati simulati a partire da dati reali", subtitle="Bin size = 250g") + theme(legend.position="none") 


png("Twin_BW_hist.png")
print(p)
dev.off()

p <- ggplot(df, aes(x = Bweight)) + geom_histogram(aes(y =..count..), colour = "black", fill = "gray74", binwidth = bw )  + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1.5) + graphic.settings + xlab("Peso alla nascita (g)") + ylab("Counts") + ggtitle("Dati simulati a partire da dati reali", subtitle="Bin size = 250g") + theme(legend.position="none") 


png("Twin_BW_hist_normale.png")
print(p)
dev.off()

fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight))
dd <- unique(data.frame(x=df$Bweight, y=fun(df$Bweight)*bw*n_obs) )

gety <- function(v) dd$y[which(abs(dd$x - v) == min(abs(dd$x - v)))]


p <- ggplot(df, aes(x = Bweight))  + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1.5) + graphic.settings + xlab("Peso alla nascita (g)") + ylab("Counts") + ggtitle("") + theme(legend.position="none") + geom_segment(aes(x = mean(Bweight), y = 0, xend = mean(Bweight), yend = gety(mean(df$Bweight))), colour="black", linetype="dotted", lwd=1.5)


png("Twin_BW_normale.png")
print(p)
dev.off()

p1 <- p + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1.5, xlim = c(min(df$Bweight), 1500), geom = "area", fill="grey74") + geom_segment(aes(x = 1500, y = 0, xend = 1500, yend = gety(1500)), colour="black", lwd=1.5)

png("Twin_BW_normale_area.png")
print(p1)
dev.off()


p2 <- p + stat_function(fun = function(x) dnorm(x, mean = mean(df$Bweight), sd = sd(df$Bweight)) * bw * n_obs, colour="black", lwd=1.5, xlim = c(min(df$Bweight), 2500), geom = "area", fill="grey74") + geom_segment(aes(x = 2500, y = 0, xend = 2500, yend = gety(2500)), colour="black", lwd=1.5)

png("Twin_BW_normale_area_exercise.png")
print(p2)
dev.off()



# getlimit <- function(p, sd, ann)
# {
# 	l <- mean(df$Bweight) - sd * sd(df$Bweight)
# 	u <- mean(df$Bweight) + sd * sd(df$Bweight)
#
# 	p + geom_segment(aes(x = l, y = 0, xend = l, yend = gety(l)), colour="black", lwd=1) +
# 	geom_segment(aes(x = u, y = 0, xend = u, yend = gety(u)), colour="black", lwd=1)
# }
#
#
# p1 <-  getlimit(p=p, sd=1)
#
#
# png("Twin_BW_normale_1s.png")
# print(p)
# dev.off()



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
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), geom = "area", fill="white", alpha=1, xlim = c(start, mean-0.67*sd)) +
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), geom = "area", fill="white", alpha=1, xlim = c(mean-0.67*sd, mean+0.67*sd)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = mean, sd = sd), geom = "area", fill="firebrick", alpha=0.2, xlim = c(mean+0.67*sd, end)) + 
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


png("Ex_Q3.png", width=500, height=250)
print(p)
dev.off()



