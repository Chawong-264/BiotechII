library(tidyverse)

data = c(1,2,3)
data  
View(data)

myDataFrame <- data.frame(
  name = c("Lee", "Smith"),
  age = c(10,30),
  height = c(150, 200)
  
)   

myDataFrame  

plot(age ~ height, data = myDataFrame)

getwd()
setwd("C:/Users/Student/Desktop/Biotech II")  

install.packages(ggplot2)
library(ggplot2)

print("Hello World")

install.packages("palmerpenguins")
library(palmerpenguins)
data(package = 'palmerpenguins')
head(penguins)

mean(penguins$bill_length_mm, na.rm = TRUE)
plot(sex ~ bill_length_mm, data = penguins)


