library(dplyr)
library(tidyverse)
library(corrplot)
data("mtcars")
setwd("C:/Users/Student/Desktop/Biotech II")

scatter.smooth(x=mtcars$mpg, y=mtcars$disp, main="Disp ~Mpg")
view(mtcars)

cor.test(mtcars$mpg, mtcars$disp)

cor_results <- cor.test(mtcars$mpg, mtcars$disp)
cor_results$estimate
cor_results$p.value
install.packages("corrplot")
library(corrplot)
corrplot(cor(mtcars))
mtcars
data()
data(diamonds)
diamonds

numeric_data <- diamonds[sapply(diamonds, is.numeric)]
numeric_data
corrplot(cor(numeric_data))
scatter.smooth(x= diamonds$price, y=diamonds$carat, main = "Price vs Carat")

view(sleep)
t.test(extra ~ group, data = sleep)
t.test(trees$Girth, mu = 5)

df1 <- data.frame(
  Age = c(10, 15, 23, 26, 28, 26, 30, 27, 29, 27),
  Weight = c(220, 150, 200, 240,250,180,190,200,220,270)
)

view(df1)

t.test(df1)
t_test_results <- t.test(df1$Age, df1$Weight)

print(t_test_results$p.value)
print(t_test_results)

df2 <- data.frame(
  ID = c("A", "B"),
  Age = c(10, 15, 23, 26, 28, 26, 30, 27, 29, 27),
  Weight = c(220, 150, 200, 240,250,180,190,200,220,270)
)
  
df2
t.test(Weight ~ ID, data = df2)

res_aov <- aov(weight ~ group, data = PlantGrowth)
view(PlantGrowth)
summary(res_aov)
TukeyHSD(res_aov)

df3 <- data.frame(
  ID = c("A", "B", "C", "D", "E"),
  Age = c(10, 15, 23, 26, 28, 26, 30, 27, 29, 27),
  Weight = c(220, 150, 200, 240,250,180,190,200,220,270)
)

aov_res2 <- aov (Age ~ ID, data = df3)
aov_res2.1 <- aov(Weight ~ ID, data = df3)
summary(aov_res2)
summary(aov_res2.1)

TukeyHSD(aov_res2)
TukeyHSD(aov_res2.1)

linear_mod <- lm(dist ~ speed, data = cars)
linear_mod2 <- lm(mpg ~ disp + qsec, data =mtcars)
plot(mtcars$disp, mtcars$mpg)

summary(linear_mod2)

data(rock)
rock
view(rock)

#Does area and perimeter affect the rock permeability and is there any correlation between the set?
corrplot(cor(rock))
correlation_rocks <- cor(rock)
print(correlation_rocks)

rock_aov <- aov(area + peri ~ perm, data = rock)
summary(rock_aov)


data("mtcars")
view(mtcars)
#Is there any significant difference between the cylinders a car has and its miles per galon usage?
cars_aov<- aov(cyl ~ mpg, data=mtcars)
summary(cars_aov)

t.test(mpg ~ am, data = mtcars)
boxplot(mpg ~ am, data = mtcars, 
        main = "MPG by Transmission Type",      
        xlab = "Transmission Type",      
        ylab = "Miles Per Gallon (mpg)",      
        col = c("blue3", "orange2"))



