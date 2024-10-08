clean()
set.seed(42)

library(ggplot2)
library(tidyverse)
library(scales)


big_number_donut_plot <- function(value, font_family, highlight_color) {
  
  # Wrangle data to get a data frame in the format we need it in to make our donut chart
  df <- tibble(x = 1, y = value) %>% 
    mutate(y_negative = 1 - y) %>% 
    pivot_longer(cols = -x) 
  
  # Create a nicely formatted big number to go in the donut hole
  big_number_text_label <- percent(value, accuracy = 1)
  
  # Create our plot Add a bar, but don't add the legend
  ggplot(df, aes(x = x, y = value, fill = name)) + geom_col(show.legend = FALSE, colour="black") +
    
    # A pie/donut chart is a bar chart with polar coordinates
    # Add polar coordinates and set the direction to -1 
    # so the filled in part starts at the top and goes clockwise
    coord_polar(theta = "y", direction = -1) +
    
    # Set the limits, which is important for adding the hole
    xlim(c(-2, 2)) +
    
    # Set a color scale with the highlighted section in whatever color
    # is chosen with the highlight_color argument and the rest in a light gray
    scale_fill_manual(values = c(highlight_color, "grey90")) +
    
    # Set theme_void() to remove grid lines and everything else from the plot
    theme_void() + 
    
    # Add the big number in the center of the hole
    annotate("text",
             label = big_number_text_label,
             family = font_family,
             fontface = "bold",
             color = highlight_color,
             size = 20,
             x = -2,
             y = 0) 
  
}


setwd("/Users/visconti/Documents/Teaching/biostat_101/img/introduction")


ggsave(
  plot = big_number_donut_plot(value = 0.05, font_family = "Arial", highlight_color = "darkred"),
  filename = "Unsuccess_rate.png",
  bg = "transparent"
)

ggsave(
  plot = big_number_donut_plot(value = 0.95, font_family = "Arial", highlight_color = "darkgreen"),
  filename = "Success_rate.png",
  bg = "transparent"
)

