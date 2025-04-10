clean()
set.seed(42)

library(ggplot2)
library(tidyverse)
library(dplyr)
library(waffle)
library(ggbeeswarm)
library(gghalves)
library(ggrepel)

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
p <- p + graphic.settings + theme(legend.position="none", legend.title = element_blank()) + theme(axis.text.y=element_blank())+ylab("") + scale_y_discrete(breaks=NULL)

png("descriptive.png", width=500, height=250)
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


png("sd.png", width=500, height=250)
print(p)
dev.off()


# Examples of outliers in calculating median and mean
pp <- data.frame(x=c(6, 34, 40, 55, 175, 0, 0), y=c(rep(0, 5), 1, -1))

p <- ggplot(pp, aes(x=x, y=y, label=x)) + geom_point(size=3) + geom_segment(aes(x = 0, y = 0, xend = 180, yend = 0), size=1) +  geom_text(vjust = 2) 
p <- p +  geom_segment(aes(x = 40, y = -0.3, xend = 40, yend = -0.1), arrow = arrow(length = unit(0.5, "cm")), size=1, colour="darkmagenta") + annotate('text', x = 40, y = -0.35, label = "Mediana", parse=T, size=5, colour="darkmagenta")
p <- p + ylim(-0.4, 0.4) + graphic.settings + theme(legend.position="none", legend.title = element_blank()) + theme(axis.text.y=element_blank()) + xlab("") + ylab("")  + theme(panel.grid.major.x = element_blank(), panel.grid.minor.x = element_blank(), panel.grid.major.y = element_blank(), panel.grid.minor.y = element_blank(), axis.ticks.y=element_blank(), panel.border = element_blank()) + scale_x_discrete(breaks=NULL) 


png("median_outlier.png", width=500, height=250)
print(p)
dev.off()

p <- p +  geom_segment(aes(x = 62, y = -0.3, xend = 62, yend = -0.1), arrow = arrow(length = unit(0.5, "cm")), size=1, colour="darkgreen") + annotate('text', x = 62, y = -0.35, label = "Media", parse=T, size=5, colour="darkgreen")

png("mean_outlier.png", width=500, height=250)
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

p <- ggplot(partners, aes(x=NumPartners2)) + geom_bar(aes(y=Percent, fill=Gender), stat = "identity") +  geom_text(aes(x = 50, y = -5, label = "Women 35-44", color = "#FC8D62", hjust=0, size=5)) + geom_text(aes(x = 50, y = 5, label = "Men 35-44", color = "#66C2A5", hjust=0, size=5))
p <- p + xlim(0, 61) + scale_colour_brewer(palette = "Set2") + graphic.settings + xlab("Reported number of lifetime opposite-sex partners") + ylab("Percentage") + theme(legend.position="none") + ggtitle("", subtitle="Observation > 60 were removed") 


png("British_sex_partner_histogram.png", width = 480*1.5, height = 480)
print(p)
dev.off() 


## Children surgery
child.1991 <- read.csv("02-5-child-heart-surgery-1991-x.csv") # read data into dataframe 


p <- ggplot(child.1991, aes(x=reorder(Hospital,-Deaths), y=Deaths)) + geom_bar(stat = "identity", fill="gray74", colour="black") 
p <- p + coord_flip() + scale_y_continuous() # breaks every two-count
p <- p + theme(legend.position="none") + labs(y="Number of children who died", x="") + graphic.settings
 

png("Children_death.png")
print(p)
dev.off() 
  
p <- ggplot(child.1991, aes(x=reorder(Hospital,-Deaths), y=Operations)) + geom_bar(stat = "identity", fill="gray74", colour="black") 
p <- p + coord_flip() + scale_y_continuous() # breaks every two-count
p <- p + theme(legend.position="none") + labs(y="Number of surgeries carried out", x="") + graphic.settings
 

png("Children_surgery.png")
print(p)
dev.off() 


p <- ggplot(child.1991, aes(x=Operations, y=Deaths, label=Hospital)) + geom_point(size=3)  + geom_label_repel(aes(label = Hospital), box.padding   = 0.35, point.padding = 0.5, segment.color = 'grey50') + labs(x="Number of operations", y = "Number of death", title="Survival in under-1s, 1991-1995") + graphic.settings + geom_smooth(method="lm", se=FALSE, col="magenta", linetype="dotted", ldw=1.5)



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