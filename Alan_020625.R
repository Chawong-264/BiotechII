setwd("C:/Users/Student/Desktop/Biotech II")

library(ggplot2)
library(tidyverse)

data(mpg)
mpg
ggplot(data = mpg)
ggplot(mpg, mapping = aes(x = cty, y = hwy))
ggplot(mpg, aes(x = cty, y = hwy)) #Same as the one above

ggplot(mpg, aes(cty, hwy)) +
  geom_point() +
  geom_smooth(formula = y~x, method = "lm")
  

ggplot(mpg, aes(cty, hwy)) +
  geom_point() + 	
  labs(x = "City MPG",
       y = "Highway MPG",
       title = "City vs Highway Miles per Gallon (MPG)") +
  geom_smooth(formula = y~x, method = "lm")

view(mpg)

ggplot(mpg, aes(factor(cyl), cty)) +
  geom_boxplot() +
  labs(x = "Cylinders",
       y = "Miles per Gallon in the City",
       title = "Relation between Cylinders and Miles per Gallon used in the City") +
  facet_grid(year~manufacturer) +
  scale_color_continuous()

ggplot(mpg, aes(cty, hwy, color = class)) +
  geom_point() +
  scale_color_viridis_d()

ggplot(mpg, aes(cty, hwy)) +
  geom_point() +
  facet_grid(year ~ drv)

ggplot(mpg, aes(cty, hwy, color = manufacturer)) +
  geom_point() +
  coord_polar() +
  labs(x = "Cylinders",
        y = "Miles per Gallon in the City",
        title = "Relation between Cylinders and Miles per Gallon used in the City")

ggplot(mpg, aes(cty, hwy, colour = class)) +
  geom_point() +
  theme_get() +
  theme(
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "blue"),
    axis.line.y.right = element_line(colour = "red") +
      theme(legend.position = "right")
  )

png("Alan_Plot_02062025.png", width = 1600, height = 800)
ggplot(mpg, aes(cty, hwy, colour = class)) +
  labs( x = "City Highway MPG",
        y = "Highway MPG",
        title = "City vs Highway Miles per gallon (mpg)") +
  geom_point() +
  theme_bw() +
  facet_grid(year ~ manufacturer) +
  theme(
    legend.position = "right",
    axis.title = element_text(size = 17),   
    axis.text = element_text(size = 12),    
    panel.grid.major = element_blank(),    
    panel.grid.minor = element_blank(),
    axis.title.y = element_text(size = 12, color = "#C23C1F"),
    axis.title.x = element_text(size = 12, color = "#141e9e"),
    plot.title = element_text(hjust = 0.5, size = 15),
    strip.background = element_blank()
  ) 
dev.off()


