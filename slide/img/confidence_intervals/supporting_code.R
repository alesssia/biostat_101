clean()
set.seed(42)

library(ggplot2)
library(gridExtra)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


setwd("/Users/visconti/Documents/Teaching/biostat_101/slide/img/confidence_intervals/")

### Sexual partner in Britain  

sample_n <- function(n, prob=PMen){ sample(NumPartners, n, prob=prob, replace=TRUE) } # sample n with replacement from data

SexData <-read.csv("../descriptive/02-4-sexual-partners-counts-x.csv", header=TRUE) # reads data into data frame
SexData50 <- SexData[SexData$NumPartners<51,]


attach(SexData50)
### Sample size
NMen <- sum(MenCount)
Men.data=rep(NumPartners,MenCount)

# Renormalise percentages to allow for truncation to 50
PMen <- MenPercent / sum(MenPercent)

create.plot <- function(v, title, print.sample.mean=FALSE, max.x=51, max.y=110)
{
	p <- ggplot(as.data.frame(v), aes(x = v)) + geom_histogram(aes(y = ..count..), binwidth = 1, colour= "black", fill = "#66C2A5") + geom_density(aes(y=..count..), fill="#66C2A5", alpha = .6) + geom_vline(xintercept=mean(Men.data), colour="magenta", linewidth=1.5, linetype="dashed") + theme(legend.position="none") + xlim(0, max.x) + ylim(0, max.y)
	p <- p + graphic.settings  
	
	if (print.sample.mean) {
		p <- p + geom_vline(xintercept=mean(v), colour="darkgreen", linewidth=1.5, linetype="dotted")
		p <- p + xlab("") + ylab("")
	} else {
		p <- p + xlab("Numero di partner eterosessuali riportati") + ylab("Numero") + ggtitle(title, subtitle="Osservazioni > 50 sono state rimosse") 
	}
	
	p
}


png("British_sex_partner_complete_dataset.png", width = 480*1.5, height = 480)
print(create.plot(Men.data, "Uomini, 35-44 anni"))
dev.off() 

set.seed(42)
myplots <- vector("list", length = 6)
myplots[[1]] <- print(create.plot(Men.data, "Uomini, 35-44 anni", print.sample.mean=TRUE))
for (i in 2:6)
	myplots[[i]] <- create.plot(sample_n(10, PMen), "n = 10", print.sample.mean=TRUE, max.y=3)

png("British_sex_partner_N10.png", width = 480*2, height = 480)
print(do.call("grid.arrange", c(myplots, ncol=3)))
dev.off()


set.seed(42)
myplots <- vector("list", length = 6)
myplots[[1]] <- print(create.plot(Men.data, "Uomini, 35-44 anni", print.sample.mean=TRUE))
for (i in 2:6)
	myplots[[i]] <- create.plot(sample_n(50, PMen), "n = 50", print.sample.mean=TRUE, max.y=10)


png("British_sex_partner_N50.png", width = 480*2, height = 480)
print(do.call("grid.arrange", c(myplots, ncol=3)))
dev.off()

set.seed(42)
myplots <- vector("list", length = 6)
myplots[[1]] <- print(create.plot(Men.data, "Uomini, 35-44 anni", print.sample.mean=TRUE))
for (i in 2:6)
	myplots[[i]] <- create.plot(sample_n(100, PMen), "n = 100", print.sample.mean=TRUE, max.y=20)


png("British_sex_partner_N100.png", width = 480*2, height = 480)
print(do.call("grid.arrange", c(myplots, ncol=3)))
dev.off()

set.seed(42)
myplots <- vector("list", length = 6)
myplots[[1]] <- print(create.plot(Men.data, "Uomini, 35-44 anni", print.sample.mean=TRUE))
for (i in 2:6)
	myplots[[i]] <- create.plot(sample_n(200, PMen), "n = 200", print.sample.mean=TRUE, max.y=40)


png("British_sex_partner_N200.png", width = 480*2, height = 480)
print(do.call("grid.arrange", c(myplots, ncol=3)))
dev.off()

set.seed(42)
myplots <- vector("list", length = 6)
myplots[[1]] <- print(create.plot(Men.data, "Uomini, 35-44 anni", print.sample.mean=TRUE))
for (i in 2:6)
	myplots[[i]] <- create.plot(sample_n(380, PMen), "n = 380", print.sample.mean=TRUE, max.y=60)


png("British_sex_partner_N380.png", width = 480*2, height = 480)
print(do.call("grid.arrange", c(myplots, ncol=3)))
dev.off()


set.seed(42)
myboost <- function(n, n_boost) sapply(1:n_boost, function(i) mean(sample_n(n, PMen)))

plot.boostrap <- function(v, title, max.x=51, max.y=110, interval=NULL)
{
	p <- ggplot(as.data.frame(v), aes(x = v)) + geom_histogram(aes(y = ..count..), binwidth = 1, colour= "black", fill = "#66C2A5")  + theme(legend.position="none") + xlim(0, max.x) + ylim(0, max.y)
	p <- p + graphic.settings + xlab("") + ylab("") + ggtitle(title) 
	
	if (is.null(interval))
	{
		p <- p + geom_vline(xintercept=mean(Men.data), colour="magenta", linewidth=0.5, linetype="dashed")
	} else {
		p <- p + geom_vline(xintercept=interval[1], colour="darkmagenta", linewidth=0.5, linetype="dashed") + geom_vline(xintercept=interval[2], colour="darkmagenta", linewidth=0.5, linetype="dashed") 
	}
	
	p
}


boost_10  <- myboost(10 , 1000)
boost_50  <- myboost(50 , 1000)
boost_100 <- myboost(100, 1000)
boost_200 <- myboost(200, 1000)
boost_380 <- myboost(380, 1000)
boost_all <- myboost(760, 1000)


png("bootstrapping.png", width = 480*2, height = 480)
print(grid.arrange(plot.boostrap(boost_10, "n = 10", max.x=30, max.y=650),
			 plot.boostrap(boost_50, "n = 50", max.x=30, max.y=650),
			 plot.boostrap(boost_100, "n = 100", max.x=30, max.y=650),
			 plot.boostrap(boost_200, "n = 200", max.x=30, max.y=650),
			 plot.boostrap(boost_380, "n = 380", max.x=30, max.y=650),
			 plot.boostrap(boost_all, "n = 760", max.x=30, max.y=650), ncol=3))
dev.off()


get.rough.CI <- function(v)
{
    c(round(mean(v), 1), round(quantile(v, 0.025), 1), round(quantile(v,0.975), 1))
}


get.rough.CI(boost_10)
get.rough.CI(boost_50)
get.rough.CI(boost_100)
get.rough.CI(boost_200)
get.rough.CI(boost_380)
get.rough.CI(boost_all)


png("bootstrapping_fence.png", width = 480*2, height = 480)
print(grid.arrange(plot.boostrap(boost_10, "n = 10", max.x=30, max.y=650, interval=get.rough.CI(boost_10)[-1]),
			 plot.boostrap(boost_50, "n = 50", max.x=30, max.y=650, interval=get.rough.CI(boost_50)[-1]),
			 plot.boostrap(boost_100, "n = 100", max.x=30, max.y=650, interval=get.rough.CI(boost_100)[-1]),
			 plot.boostrap(boost_200, "n = 200", max.x=30, max.y=650, interval=get.rough.CI(boost_200)[-1]),
			 plot.boostrap(boost_380, "n = 380", max.x=30, max.y=650, interval=get.rough.CI(boost_380)[-1]),
			 plot.boostrap(boost_all, "n = 760", max.x=30, max.y=650, interval=get.rough.CI(boost_all)[-1]), ncol=3))
dev.off()


plot.boostrap.CI <- function(v, title, max.x=51, max.y=110, interval=NULL)
{
	p <- ggplot(as.data.frame(v), aes(x = v)) + geom_histogram(aes(y = ..count..), binwidth = 1, colour= "black", fill = "#66C2A5", alpha=0.1)  + theme(legend.position="none") + xlim(0, max.x) + ylim(0, max.y)
	p <- p + graphic.settings + xlab("") + ylab("") + ggtitle(title) 
	p <- p + geom_vline(xintercept=mean(Men.data), colour="magenta", linewidth=0.5, linetype="dashed")
	p <- p + geom_vline(xintercept=interval[1], colour="darkmagenta", linewidth=0.5, linetype="dashed") + geom_vline(xintercept=interval[2], colour="darkmagenta", linewidth=0.5, linetype="dashed") 
	p <- p + geom_segment(aes(x = interval[1], y = 100, xend = interval[2], yend = 100), colour="magenta", lwd=1.5) + geom_segment(aes(x = interval[1], y = 50, xend = interval[1], yend = 150), colour="magenta", lwd=1.5) + geom_segment(aes(x = interval[2], y = 50, xend = interval[2], yend = 150), colour="magenta", lwd=1.5)
	
	p
}


png("bootstrapping_CI.png", width = 480*2, height = 480)
print(grid.arrange(plot.boostrap.CI(boost_10, "n = 10", max.x=30, max.y=650, interval=get.rough.CI(boost_10)[-1]),
			 plot.boostrap.CI(boost_50, "n = 50", max.x=30, max.y=650, interval=get.rough.CI(boost_50)[-1]),
			 plot.boostrap.CI(boost_100, "n = 100", max.x=30, max.y=650, interval=get.rough.CI(boost_100)[-1]),
			 plot.boostrap.CI(boost_200, "n = 200", max.x=30, max.y=650, interval=get.rough.CI(boost_200)[-1]),
			 plot.boostrap.CI(boost_380, "n = 380", max.x=30, max.y=650, interval=get.rough.CI(boost_380)[-1]),
			 plot.boostrap.CI(boost_all, "n = 760", max.x=30, max.y=650, interval=get.rough.CI(boost_all)[-1]), ncol=3))
dev.off()



circleFun <- function(center = c(0,0), diameter = 1, npoints = 100){
    r = diameter / 2
    tt <- seq(0, 2*pi, length.out = npoints)
    xx <- center[1] + r * cos(tt)
    yy <- center[2] + r * sin(tt)
    data.frame(x = xx, y = yy)
}


mydnorm  <- function(x, mean, sd) { dnorm(x, mean, sd)*4 }

#geom_path will do open circles, geom_polygon will do filled circles
p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="springgreen4", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="firebrick", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="orange", colour="black", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) +
		annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +
				
		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") + 
				
		annotate("text", x = 3, y=c(3.6, 3.4), label = c("Campioni", "(dimensione == n)"), parse = TRUE, size=c(7,5)) 
				
p <- p + stat_function(data = data.frame(x = c(0, 11)), aes(x), fun = mydnorm, n = 101, args = list(mean = 5, sd = 1), geom = "area", fill=NA, colour="black", alpha=0.2, xlim=c(2, 8)) +
		geom_segment(aes(x = 5, y = 0, xend = 5, yend = mydnorm(5, mean=5, sd = 1)), colour="black", linetype="dashed") + 
		annotate("text", x = 5, y=-0.2, label = "mu", parse = TRUE, size=8) 

p <- p + geom_point(data=data.frame(x=c(3.5, 4.5, 5.5), y=c(0, 0, 0), col=c("a", "b", "c")), aes(x=x, y=y, colour=col), size=7) + scale_colour_manual(values=c("springgreen4", "firebrick", "orange")) +
	geom_segment(aes(x = 1.2, y = 0.8, xend = 3.5-0.05, yend = 0.07), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
	geom_segment(aes(x = 2.7, y = 1.3, xend = 4.5-0.05, yend = 0.07), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
	geom_segment(aes(x = 3.2, y = 2.8, xend = 5.5-0.05, yend = 0.07), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
		
	annotate("text", x = 3.55, y=-0.2, label = "bar(x)[1]", parse = TRUE, size=7) +
	annotate("text", x = 4.55, y=-0.2, label = "bar(x)[2]", parse = TRUE, size=7) +
	annotate("text", x = 5.55, y=-0.2, label = "bar(x)[3]", parse = TRUE, size=7) 
	
p <- p + annotate("text", x = 6.8, y=mydnorm(5, mean=5, sd = 1), label = "Distribuzione campionaria", parse = FALSE, size=7) +
 	theme_void() + theme(legend.position="none", legend.title = element_blank()) +
	theme(legend.position="none", legend.title = element_blank()) + 
	theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 


png("sampling_distro.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()
				

# Sampling variability
p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) #+
		# annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
# 		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
# 		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +
#
# 		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
# 		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
# 		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +

p <- p + theme_void() + theme(legend.position="none", legend.title = element_blank()) +
		 theme(legend.position="none", legend.title = element_blank()) + 
		 theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("sampling_variability_1.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()
	
p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="springgreen4", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) +
		annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
# 		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
# 		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +
#
 		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") #+
# 		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
# 		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +

p <- p + theme_void() + theme(legend.position="none", legend.title = element_blank()) +
		 theme(legend.position="none", legend.title = element_blank()) + 
		 theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("sampling_variability_2.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()	

p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="firebrick", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) +
#		annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
 		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
# 		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +
#
# 		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
 		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") #+
# 		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +

p <- p + theme_void() + theme(legend.position="none", legend.title = element_blank()) +
		 theme(legend.position="none", legend.title = element_blank()) + 
		 theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("sampling_variability_3.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()	


p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="transparent", colour="transparent", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="orange", colour="black", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) +
#		annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
# 		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
 		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +
#
# 		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
# 		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") #+
 		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") 

p <- p + theme_void() + theme(legend.position="none", legend.title = element_blank()) +
		 theme(legend.position="none", legend.title = element_blank()) + 
		 theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("sampling_variability_4.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()	

		
p <- ggplot() + 
		geom_polygon(data=circleFun(center=c(1, 3), diameter = 1.5), aes(x,y), fill="steelblue1", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(1, 1), diameter = 0.5), aes(x,y), fill="springgreen4", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(2.5, 1.5), diameter = 0.5), aes(x,y), fill="firebrick", colour="black", alpha=0.6) +
		geom_polygon(data=circleFun(center=c(3, 3), diameter = 0.5), aes(x,y), fill="orange", colour="black", alpha=0.6) +
				
		annotate("text", x = 1, y=3, label = "Popolazione", parse = FALSE, size=7) +
		annotate("text", x = 1, y=1, label = "bar(x)[1]", parse = TRUE, size=7) +
 		annotate("text", x = 2.5, y=1.5, label = "bar(x)[2]", parse = TRUE, size=7) +
 		annotate("text", x = 3, y=3, label = "bar(x)[3]", parse = TRUE, size=7) +

 		geom_segment(aes(x = 1, y = 2.2, xend = 1, yend = 1.3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
 		geom_segment(aes(x = 1.6, y = 2.45, xend = 2.3, yend = 1.7), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") +
 		geom_segment(aes(x = 1.8, y = 3, xend = 2.7, yend = 3), arrow = arrow(length = unit(0.5, "cm"), ends="last"), colour="black") 

p <- p + theme_void() + theme(legend.position="none", legend.title = element_blank()) +
		 theme(legend.position="none", legend.title = element_blank()) + 
		 theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("sampling_variability_5.png", width=760, height=400, bg = "transparent")
print(p)
dev.off()	


p1 <- ggplot() +
  stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), geom = "area", fill="grey74", alpha=0.2, xlim = c(-2, 2)) +
  stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="grey70") + ylab("") +
  geom_segment(aes(x = -2, y = 0, xend = 2, yend = 0), colour="magenta", lwd=2) +
  scale_y_continuous(breaks = NULL) + theme_void() 
  
p2 <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey74", alpha=0.2, xlim = c(-10, 10)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="grey70") + ylab("") +
	geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
    scale_y_continuous(breaks = NULL) + theme_void() +
	theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("large_small_CI.png", width = 480*2, height = 480)
grid.arrange(p1, p2, ncol=2)
dev.off()

png("unannotated_CI.png", bg = "transparent")
print(p2)
dev.off()

p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey34", alpha=0.2, xlim = c(-10, 10)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.005, label = "paste(alpha/2, \"\")", parse = TRUE, size=7) +
	annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.005, label = "paste(alpha/2, \"\")", parse = TRUE, size=7) + 
	geom_segment(aes(x = -12, y = dnorm(-12, mean=0, sd=4)+0.0025, xend = -11, yend = 0), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = 12, y = dnorm(12, mean=0, sd=4)+0.0025, xend = 11, yend = 0), arrow = arrow(length = unit(0.2, "cm"))) +
	annotate("text", x = 0, y = dnorm(12, mean=0, sd=4)+0.01, label = "paste(1- alpha, \"\")", parse = TRUE, size=7) +
	geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -10, y = -0.005, label = "bar(x) - z[alpha/2] %*% SE", parse=T, size=5) +
	annotate('text', x = 10, y = -0.005, label = "bar(x) + z[alpha/2] %*% SE", parse=T, size=5) +
	geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) + theme_void() +
	theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 

png("alpha_level.png", bg = "transparent")
print(p)
dev.off()


p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey34", alpha=0.2, xlim = c(-10, 10)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	annotate('text', x = 0, y = -0.0045, label = "bar(x)", parse=T, size=5) +
	geom_segment(aes(x = 0, y = -0.007, xend = -10, yend = -0.007), colour="magenta", arrow = arrow(length = unit(0.3, "cm"), ends = "both", type = "open"), lwd=1.2) +
	geom_segment(aes(x = 0, y = -0.007, xend = 10, yend = -0.007), arrow = arrow(length = unit(0.3, "cm"), ends = "both", type = "open"), colour="magenta", lwd=1.2) +
	annotate("text", x = -5, y = -0.01, label = "Margine di Errore", parse = FALSE, size=6) +
	annotate("text", x = 5, y = -0.01, label = "Margine di Errore", parse = FALSE, size=6) +
	geom_segment(aes(x = -10, y = -0.014, xend = 10, yend = -0.014), colour="darkgreen", arrow = arrow(length = unit(0.3, "cm"), ends = "both", type = "open"), lwd=1.2) +
	annotate("text", x = 0, y = -0.0165, label = "Intervallo di Confidenza", parse = FALSE, size=6) + theme_void() +
	theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 
	

png("ME_and_CI.png", bg = "transparent")
print(p)
dev.off()


# Various student's t
for (df in c(1, 5, 30))
{
	p <-   ggplot(data = data.frame(x = c(-6, 6)), aes(x)) +
	    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 1), colour="black", linetype="dashed", lwd=1.2) +
		stat_function(fun = dt, n = 101, args = list(df = df), colour="magenta", lwd=1.2) +
	
		geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
		annotate("text", x = 4, y = 0.05, label = paste0("df = ", df), parse = FALSE, size=9) +
		theme_void() + theme(panel.background = element_rect(fill = "transparent", colour = NA_character_), plot.background = element_rect(fill = "transparent", colour = NA_character_)) 


	png(paste0("tdist_df", df, ".png"), width=480, height=400, bg = "transparent")
	print(p)
	dev.off()
	
}



