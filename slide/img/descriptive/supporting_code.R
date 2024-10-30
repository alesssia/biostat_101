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

### Sexual partner in Britain  
setwd("/Users/visconti/Documents/Teaching/biostat_101/slide/img/descriptive/")
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
  