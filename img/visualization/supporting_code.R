clean()
set.seed(42)

library(ggplot2)
library(tidyverse)
library(dplyr)
library(waffle)
library(extrafont)

font.size <- 22
graphic.settings <- theme_bw(base_size = font.size) + theme(axis.ticks = element_line(size = 0.3)) +  theme(legend.title = element_blank()) + theme(plot.subtitle=element_text(size=font.size/4*3), plot.title=element_text(size=font.size))


setwd("/Users/visconti/Documents/Teaching/biostat_101/img/visualization")
md <- read.csv("/Users/visconti/Documents/Research/2021/random/PRIMM/doc/sdata/PRIMM_glycomics_anonymised_raw_data.csv")


## Qualitative variables

# Absolute frequency

tmp <- table(md$metastatic_stage)
tmp <- as.data.frame(cbind(names(tmp), tmp))
colnames(tmp) <- c("stage", "value")
tmp$value <- as.numeric(tmp$value)

g <- ggplot(tmp, aes(x=stage, y=value)) + geom_bar(stat = "identity", width=0.8, fill="gray74", colour="black") + theme(legend.position="none") + graphic.settings + xlab("Metastatic stage") + ylab("Counts")

png("MStage_barplot_vertical.png")
print(g)
dev.off()

g <- ggplot(tmp, aes(y=stage, x=value)) + geom_bar(stat = "identity", width=0.8, fill="gray74", colour="black") + theme(legend.position="none") + graphic.settings + ylab("Metastatic stage") + xlab("Counts")

png("MStage_barplot_horizontal.png")
print(g)
dev.off()


#Relative frequency
tmp <- table(md$metastatic_stage)
tmp <- as.data.frame(cbind(names(tmp), tmp))
colnames(tmp) <- c("stage", "value")
tmp$value <- as.numeric(tmp$value)

tmp <- tmp %>% 
  arrange(desc(stage)) %>%
  mutate(prop = value / sum(tmp$value) *100) %>%
  mutate(ypos = cumsum(prop)- 0.5*prop )

g <- ggplot(tmp, aes(y=stage, x=prop)) + geom_bar(stat = "identity", width=0.8, fill="gray74", colour="black") + theme(legend.position="none") + graphic.settings + ylab("Metastatic stage") + xlab("Proportion (%)")

png("MStage_barplot_horizontal_relative.png")
print(g)
dev.off()





g <- ggplot(tmp, aes(x="", y=prop, fill=stage)) + geom_bar(stat="identity", width=0.9, color="white") + coord_polar("y", start=0) +  theme_void() + geom_text(aes(y = ypos, label = stage), color = "black", size=6) + scale_fill_brewer(palette="Set2") + theme(legend.position="none") 

png("MStage_piechart.png")
print(g)
dev.off()


 
tmp <- table(md$metastatic_stage)
tmp <- as.data.frame(cbind(names(tmp), tmp))
colnames(tmp) <- c("stage", "value")
tmp$value <- as.numeric(tmp$value)

tmp$fraction = tmp$value / sum(tmp$value)
tmp$ymax = cumsum(tmp$fraction)
tmp$ymin = c(0, head(tmp$ymax, n=-1))
tmp$labelPosition <- (tmp$ymax + tmp$ymin) / 2
tmp$label <- paste0(tmp$stage, "\n (", round(tmp$fraction*100, 1), "%)")


g <- ggplot(tmp, aes(ymax=ymax, ymin=ymin, xmax=4, xmin=3, fill=stage)) + geom_rect() + coord_polar(theta="y") + xlim(c(2, 4)) +  theme_void() + geom_label( x=3.5, aes(y=labelPosition, label=label), size=6) + scale_fill_brewer(palette="Set2") + theme(legend.position="none") 


png("MStage_Donut.png")
print(g)
dev.off()

tmp <- table(md$metastatic_stage)
tmp <- as.data.frame(cbind(names(tmp), tmp))
colnames(tmp) <- c("stage", "value")
tmp$value <- as.numeric(tmp$value)

tmp$proportion <- round(tmp$value / sum(tmp$value) *100, 0)
tmp$proportion[which(tmp$stage == "M1c")] <- tmp$proportion[which(tmp$stage == "M1c")]  + 1

g <- waffle(tmp[, c("stage", "proportion")], rows = 10, colors = c("#66C2A5", "#FC8D62", "#8DA0CB", "#E78AC3", "#A6D854"), legend_pos = "bottom")

png("MStage_waffle.png")
print(g)
dev.off()
