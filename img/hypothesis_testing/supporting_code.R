clean()
set.seed(42)

library(ggplot2)
library(gridExtra)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


setwd("/Users/visconti/Documents/Teaching/biostat_101/slide/img/hypothesis_testing")


n_i <- 151
mean_i <- 6.6
sd_i <- 10

n_c <- 148
mean_c <- 4
sd_c <- 8.7

p <-  ggplot(data = data.frame(x = c(-25, 40)), aes(x)) + 
	 stat_function(fun = function(x) dnorm(x, mean = mean_i, sd = sd_i), colour="darkgreen", lwd=1) + 
	 stat_function(fun = function(x) dnorm(x, mean = mean_c, sd = sd_c), colour="magenta", lwd=1) + 
	 annotate("text", x = mean_i, y = dnorm(mean_i, mean=mean_i, sd=sd_i)+ 0.001, label = "Dexamethasone e standard care", color="darkgreen", size=7) +
	 annotate("text", x = mean_c, y = dnorm(mean_c, mean=mean_c, sd=sd_c)+ 0.001, label = "Standard care", color="magenta", size=7) +
 	 geom_segment(aes(y = 0, x = mean_i, yend = dnorm(mean_i, mean=mean_i, sd=sd_i), xend = mean_i), color="darkgreen", lwd=1, linetype="dotted") +
 	geom_segment(aes(y = 0, x = mean_c, yend = dnorm(mean_c, mean=mean_c, sd=sd_c), xend = mean_c), color="magenta", lwd=1, linetype="dotted")  +
	geom_segment(aes(x = mean_i, y = -0.001, xend =  mean_i, yend = 0), colour="black") + 
	annotate("text", x = mean_i, y = -0.002, label = mean_i, parse = FALSE, size=6) +
	geom_segment(aes(x = mean_c, y = -0.002, xend =  mean_c, yend = 0), colour="black") +
	annotate("text", x = mean_c, y = -0.003, label = mean_c, parse = FALSE, size=6) + 
	geom_segment(aes(x = -25, y = 0, xend =  40, yend = 0), colour="black") + theme_void() 

png("Day_ventilation_free_distribution_by_treatment.png")
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

png("One-tailed_test_right.png")
print(p)
dev.off()


p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey54", alpha=0.2, xlim = c(-10, 15)) +
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(-15, -10)) + 
	# stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(10, 15)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	# geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	# annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.005, label = "paste(mu[1] - mu[2], \"\")", parse = TRUE, size=7) +
	# annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.005, label = "paste(mu[2] - mu[1], \"\")", parse = TRUE, size=7) +
	geom_segment(aes(x = 12, y = dnorm(6, mean=0, sd=4)+0.01, xend = 7, yend = dnorm(12, mean=0, sd=4)+0.01), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = -12, y = dnorm(-12, mean=0, sd=4)+0.01, xend = -11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	# annotate("text", x = 0, y = dnorm(12, mean=0, sd=4)+0.01, label = "paste(1- alpha, \"\")", parse = TRUE, size=7) +
	# geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	# geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	# annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -10, y = -0.005, label = "-z", parse=T, size=5) +
	# annotate('text', x = 10, y = -0.005, label = "z", parse=T, size=5) +
	# geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
	theme_void()

png("One-tailed_test_left.png")
print(p)
dev.off()


p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey34", alpha=0.2, xlim = c(-10, 10)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0025, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0025, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.0055, label = "Regione di rifiuto",  size=5) +
	annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.0055, label = "Regione di rifiuto",  size=5) + 
	geom_segment(aes(x = -12, y = dnorm(-12, mean=0, sd=4)+0.0025, xend = -11, yend = 0), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = 12, y = dnorm(12, mean=0, sd=4)+0.0025, xend = 11, yend = 0), arrow = arrow(length = unit(0.2, "cm"))) +
	annotate("text", x = 0, y = dnorm(12, mean=0, sd=4)+0.01, label = "Regione di non rifiuto",  size=5) +
	geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -10, y = -0.005, label = "bar(x) - z[alpha/2] %*% SE", parse=T, size=5) +
	annotate('text', x = 10, y = -0.005, label = "bar(x) + z[alpha/2] %*% SE", parse=T, size=5) +
	geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) + theme_void()

png("rifiuto_non_rifiuto.png")
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
	annotate("text", x = -12, y = dnorm(12, mean=0, sd=4)+0.012, label = "0.025", parse = TRUE, size=5) +
	annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.012, label = "0.025", parse = TRUE, size=5) +
	# geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	# geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	# annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -10, y = -0.005, label = "-1.96", parse=T, size=5) +
	annotate('text', x = 10, y = -0.005, label = "1.96", parse=T, size=5) +
	# geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
	theme_void()

png("Two-tailed_test_ex_CI.png")
print(p)
dev.off()


p <-   ggplot(data = data.frame(x = c(-15, 15)), aes(x)) +
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="grey74", alpha=0.2, xlim = c(-10, 10)) +
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(-15, -10)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="darkgreen", alpha=0.7, xlim = c(-10, -9.5)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="magenta", alpha=1, xlim = c(10, 15)) + 
	stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), geom = "area", fill="darkgreen", alpha=0.7, xlim = c(9.5, 10)) + 
    stat_function(fun = dnorm, n = 101, args = list(mean = 0, sd = 4), colour="black") + ylab("") +
	geom_segment(aes(x = -10, y = -0.0045, xend = -10, yend = dnorm(-10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 10, y = -0.0045, xend = 10, yend = dnorm(10, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = -9.5, y = -0.002, xend = -9.5, yend = dnorm(-9.5, mean=0, sd=4)), colour="black") +
	geom_segment(aes(x = 9.5, y = -0.002, xend = 9.5, yend = dnorm(9.5, mean=0, sd=4)), colour="black") +
    scale_y_continuous(breaks = NULL) +
	# annotate("text", x = -12, y = dnorm(-12, mean=0, sd=4)+0.005, label = "paste(mu[1] - mu[2], \"\")", parse = TRUE, size=7) +
	# annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.005, label = "paste(mu[2] - mu[1], \"\")", parse = TRUE, size=7) +
	geom_segment(aes(x = -12, y = dnorm(-12, mean=0, sd=4)+0.01, xend = -11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	geom_segment(aes(x = 12, y = dnorm(12, mean=0, sd=4)+0.01, xend = 11, yend = 0.0025), arrow = arrow(length = unit(0.2, "cm"))) +
	annotate("text", x = -12, y = dnorm(12, mean=0, sd=4)+0.012, label = "0.025", parse = TRUE, size=5) +
	annotate("text", x = 12, y = dnorm(12, mean=0, sd=4)+0.012, label = "0.025", parse = TRUE, size=5) +
	# geom_segment(aes(x = 0, y = 0, xend = 0, yend = dnorm(0, mean=0, sd=4)), colour="grey60", linewidth=1, linetype="dotted") +
	# geom_segment(aes(x = 0, y = -0.0025, xend = 0, yend = 0), colour="black") +
	# annotate('text', x = 0, y = -0.005, label = "bar(x)", parse=T, size=5) +
	annotate('text', x = -9.5, y = -0.003, label = "-1.9", parse=T, size=5) +
	annotate('text', x = 9, y = -0.003, label = "1.9", parse=T, size=5) +
	annotate('text', x = -10, y = -0.007, label = "-1.96", parse=T, size=5) +
	annotate('text', x = 10, y = -0.007, label = "1.96", parse=T, size=5) +
	# geom_segment(aes(x = -10, y = 0, xend = 10, yend = 0), colour="magenta", lwd=2) +
	theme_void()


png("Two-tailed_test_ex.png")
print(p)
dev.off()

