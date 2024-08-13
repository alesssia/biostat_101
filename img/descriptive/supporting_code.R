  
  
 
### Sexual partner in Britain  
setwd("/Users/visconti/Documents/Teaching/biostat_101/img/descriptive/")
partner.counts <-read.csv("02-4-sexual-partners-counts-x.csv", header=TRUE) # reads data into data frame

attach(partner.counts)
Men.data=rep(NumPartners,MenCount)
Women.data=rep(NumPartners,WomenCount)

Ncats=length(NumPartners)

partners = data.frame( NumPartners2=c(NumPartners,NumPartners), Percent=c(MenPercent,WomenPercent), Gender=c(rep("M",Ncats),rep("F",Ncats)) )
partners$Percent[partners$Gender == "F"] <- -partners$Percent[partners$Gender == "F"]

p <- ggplot(partners, aes(x=NumPartners2)) + geom_bar(aes(y=Percent, fill=Gender), stat = "identity") +  geom_text(aes(x = 40, y = -5, label = "Women 35-44", color = "Female", hjust=0, size=5)) + geom_text(aes(x = 40, y = 5, label = "Men 35-44", color = "Male", hjust=0, size=5))
p <- p + xlim(0, 50) + scale_colour_brewer(palette = "Set2") + graphic.settings + xlab("Reported number of lifetime opposite-sex partners") + ylab("Percentage") + theme(legend.position="none")  


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


p <- ggplot(child.1991, aes(x=Operations, y=Deaths, label=Hospital)) + geom_point(size=3)  + geom_label_repel(aes(label = Hospital), box.padding   = 0.35, point.padding = 0.5, segment.color = 'grey50') + labs(x="Number of operations", y = "Number of death", title="Survival in under-1s, 1991-1995")


png("Children_death_vs_surgery.png")
print(p)
dev.off() 
  
  