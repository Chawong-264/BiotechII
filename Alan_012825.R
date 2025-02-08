getwd()
setwd("C:/Users/Student/Desktop/Biotech II")
mydataframe <- read.csv("ordered_data.csv")
print(mydataframe)
summary(mydataframe)

my_df <- data.frame (
  ID = c(1:10),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6,2.8,2.6,3.0,2.7,2.9,2.7),
  Leaf_mass = c(22, 15, 20, 24,25,18,19,20,22,27)
)
print (my_df) 
summary (my_df)

my_df$Leaf_area
my_df [2,]
my_df[,2]
my_df [2,2]
my_df [2:3,1:2] 

victor <- c("Mario", "Susy", "Regs", "Autumn", "Jafeth")

my_people <- data.frame(
    ID = victor,
    age = c(23,23,23,24,23),
    gender = c("Male", "Female", "Female", "Female", "Male"),
    act = c(5,30,1,5,10)
)
print(my_people)
summary(my_people)

min(my_people$age)
max(my_people$act)

3==2
"a"=="b"
3<2
2>3
!(3<2)
!("a"=="b")

var1<-1
var2<-"red"
(var1==1)&(var2=="red")
(var1==1) & (var2=="green")
(var1==1) | (var2=="red")
(var1==1) | (var2=="green")

if (3 == 2)
{	  
  print ("num1 equals num2")
} else 
{  
  print ("num1 does not equal num2")
}

my_function <- function ()
{
  print ("Hello World!")
}

my_function()

my_function <- function(x, y) {
  val <- x + y
}
my_function(1,2)

my_function2 <- function(x, y) {
  val <- x + y
  return(val)  
}

my_function2(1,2)

my_function <- function(x,y) {
  if (x>y)
  {
    val<-x^2
    return(val)
  }else
  {
    val <- y^3
    return(val)
  }
}
my_function(1,2)

?sample

activity <- function(x) {
  rng <- sample(1:5, 1)
  if (x==rng){
    print("These values are the same")
  }else
  {print(rng)
    print("These two number are not the same")
  }
}

activity(3)
  


