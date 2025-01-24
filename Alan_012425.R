x<-1
x <- 1
x< -1
(X <- -1)

X == x

X != x
X!= x
X != x

g <- 4.2
class (g)

h <- 3L
class(h)

p <- "Alan"
class(p)

f <- TRUE
class(f)
t <- FALSE
class(t)

m <- 2+3i
class(m)

g <- TRUE
class(g)
i <- FALSE
class (i)

vector1 <- c(1,2,3,4)
vector2 <- 1:4

mymatrix <- matrix(vector1, nrow = 4, ncol = 4)
mymatrix

mdf <- data.frame(id=c("A", "B", "C", "D"), values = vector1, values2 = vector2)
mdf

class(vector1)

num_vec1<-numeric(6)
num_vec<- numeric(5)
num_vec<-c(1,2,3,4)
num_vec[5] <- 5
num_vec[2]

num_vec[3] <- num_vec[5]
num_vec[3]

char_vec<- c("this", "is", "Alan", "Wong")
char_vec[c(1,3,4)]

names(num_vec) <- c("Age", "Height", "Third", "Fourth", "Fifth")
num_vec
num_vec["Age"]

names(char_vec) <- c("1", "2", "3", "4")
char_vec
char_vec[c("2","4")]

num_vec2 <- numeric(5)
char_vec2 <- character(5)

num_vec2 <- c(1,3,5,7,9)
char_vec2 <- c("hello", "world", "life", "is", "good")

names(num_vec2) <- c(char_vec2)             
num_vec2[c("is", "life")]

new_vec <- num_vec2[c(1,2,5)]
new_vec

new_vec2 <- names(new_vec)
new_vec2

(3+7)*(1+2)
25/5
25/g
5^2
2^(3+5)
sqrt(256)
log10(100)
log(2.56)
log(x=3, base=3)

Leaf_area <-c(2.5, 1.6,2.2,2.6)
Leaf_mass <- c(22,15,20,24)

mean(Leaf_area)
mean(Leaf_mass)

LMA <- Leaf_mass/Leaf_area
LMA
mean(LMA)

max(Leaf_area) < min(Leaf_mass)
