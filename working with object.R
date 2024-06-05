## OBJECT FUNCTION
a=c(1,2)
a
str(a)
test_obj<- function(x){
  if (is.atomic(x)){x[[1]]}
  else if (is.list(x)){x$vec}[[x$index]]
  else {stop(" the input is not supported")}
}
test_obj(c(10,11,12))
test_obj(list(vec=c("Rohit","Abhay","Rakesh"), index = 2))
test_obj(max())
test_obj((list(lst=c("Rohit","Abhay","Rakesh"))))
test_obj((list(vec=c("Rohit","Abhay","Rakesh"))))
test_obj(c("Rohit","Abhay","Rakesh"))
test_obj(c("Rohit","Abhay","Rakesh"))[[NULL]]
test_obj(list(index=2))

obj_type <- function(s){
  if(is.atomic(s)){s[[1]]}
  else if(is.list(s)){
    if (!is.null(s$vec) && is.atomic(s$vec)){
      if(is.numeric(s$index) && length(s)==1){
        s$vec[[s$index]]
      }else{ stop("invalid index")}
    }else{stop("data is invalid")}
  }else{stop("input is not supported")}
}

print(obj_type(list(lst=c("Cat","Bat","Rat"))))

obj_type1(list(index = 2))


#accessing object classes and types
x<- c(1,2,3,4)
class(x)
typeof(x)
str(x)

y<- 1.3
class(y)
typeof(y)
str(y)

#char
x<- c('a','b','c')
class(x)
typeof(x)
str(x)

# list
x <- list(one = c("a","b","c"), two = c(TRUE, FALSE))
class(x)
typeof(x)
str(x)

# Dataframe
x <- data.frame(one = c("a","b","c"), two = c(1, 2, 3))
class(x)
typeof(x)
str(x)

s <- c(1, 2, 3, 4, 5, 6, 6, 5, 4, 3, 2, 1)
class(s)
typeof(s)

mat<- matrix(s,nrow=4)
mat
class(mat)
typeof(mat)
dim(mat)

arr <- array(s, dim= c(3,2,2))
class(arr)
typeof(arr)
dim(arr)

df <- data.frame(a=c(1,2,3), b=c("Cat","Mat","Rat"))
class(df)
typeof(df)

dat <- s
dim(dat) <- c(3,4)
class(dat)
typeof(dat)

dim(dat) <- c(2,6)
class(dat)
typeof(dat)

dim(dat) <- c(2,3,2)
class(dat)
typeof(dat)
dim(dat)

#iterating over 1D
for (i in 1:nrow(df)){
  cat("row number",i,"column a",df[i,"a"],"column b",df[i,"b"],"\n")
}


c(1,2) & c(3,0)  # and function
c(1,1) | c(1,0)  # or function
c(1,2) && c(1,1)

c(1) && c(1)
c(1,2,3) & c(1,2,3)
c(1,1) || c(1,0)

!c(00)
c(T,T)&c(T,F)
c(T,T)&c(T,T)
c(T,T)|c(T,F)
c(T,T)|c(T,T)

c(T,T)&&c(T,F)
c(T,T)&&c(T,T)
c(T,T)||c(T,F)
c(T,T)||c(T,T)

#%in%
c(1,5) %in% c(1,2,3,4)

direction <- function(i, j, k) {
  if (i < j & j < k) 1
  else if (i > j & j > k) -1
  else 0
}

direction(1, 2, 3)
direction(c(1, 2),c(2, 3),c(3, 4))

direction2 <- function(i, j, k) {
  if (i < j && j < k) 1
  else if (i > j && j > k) -1
  else 0
}
direction(1, 2, 3)
direction(c(1, 2),c(2, 3),c(3, 4))

# any() and all()

x<- c(-2,-1, 0,1,2,3)
any(x<0)
all(x<0)
all(x0)

updated_direction_all <- function(i, j, k) {
  if (all(i < j & j < k)) 1
  else if (all(i > j & j > k)) -1
  else 0
}

updated_direction_all(1, 2, 3)
updated_direction_all(c(1, 2),c(2, 3), c(3, 4))
updated_direction_all(c(4,3),c(3, 2), c(2,1))
updated_direction_all(c(4,3), c(2,1),c(3, 2))
x
abs(x)
abs(x)>= 2
which(abs(x)>=2)
x[abs(x)>=2]

x[x>=2]

x[x>= 10]

# missing values
x <- c(-3,   NA, -2, -1, 0, NA, 1, NA, 3)
x+2
x[x>=0]
any(x>3)
any(x < -3)  
any(x >3)
#na.rm=
all(c(TRUE, TRUE, NA),na.rm = TRUE)
all(x,na.rm=TR)

x[which(x>2)]

if(2) cat("ture") else cat("false")

if(3)cat("True") else cat("False")

# Math Function
sqrt(4)
sqrt(-4)
4^(1/2)

1/0
log(0)
is.finite(1/0)
is.infinite(1/0)
is.infinite(log(0))
1/0 < 0
log(0) > 0
is.pos.infinite <- function(x){
  is.infinite(x) & x > 0
}
is.neg.infinite <- function(x){
  is.infinite(x) & x < 0
}
is.pos.infinite(1/0)
is.neg.infinite(log(0))

# Rounding Function
ceiling(c(-1.3,-1.7, 1.3, 1.7))
floor(c(-1.3,-1.7, 1.3, 1.7))
trunc(c(-1.3,-1.7, 1.3, 1.7))
trunc(-1.9999)
round(c(-1.3,-1.7, 1.3, 1.7))
round(1.5)
signif(pi,5)

# Trignometric Functions
sin(0)
cos(0)
tan(0)
asin(0)
acos(0)
atan(0)

# Hyperbolic Functions
sinh(1)
cosh(1)
tanh(1)
asinh(1)
acosh(1)
atanh(1)

#Extreme Functions
min(c(1,2,3,4))
max(c(1,2,3,4))
min(c(1,2,3,4),c(5,6,7),c(9,12,15))
max(c(1,2,3,4),c(5,6,7),c(9,12,15))
pmin(c(1, 2, 3), c(3, 2, 1), c(2, 3, 4))
pmax(c(1, 2, 3), c(3, 2, 1), c(2, 3, 4))
pmax(c(1,2,3,4),c(3,4,5),c(8,6,3,5))

#Finding Roots
polyroot(c(-2,1,1)) # x^2+x-2=0
Re(polyroot(c(-2,1,1)))

# x^2 + x - 2 = 0
polyroot(c(-2,1,1))
# 1-0i -2 + 0i this is in the form of complex number but we want the real number
#for that we use Re() to resolve the equation

Re(polyroot(c(-2,1,1)))
# now you get the proper roots for the equation
x^3 - x^2 -2*x -1 =0
r<- polyroot(c(-1,-2,-1,1))
r^3-r^2-2*r-1
round(r^3-r^2-2*r-1,10)

#Derivative
x <- expression(x^2)
deriv(x,"x")
x<- deriv(quote(x^2),"x")
eval(x,list(x=1,y=2))

deriv(expression(x^3),"x")
x<- expression(sin(x)*cos(x))
deriv(x,"x")
eval(deriv(x,"x"),list(x=1))


# Integration
integrate(function(x)sin(x),0,(pi/2))
str(integrate(function(x)sin(x),0,(pi/2)))


## Statistical Function
# sample
sample(1:10, size=5) 
sample
sample(1:10, 5, TRUE)
sample(letters, size=5)
sample(list(a=c(1,2,3,4,5), b=c('x','y','z'), c= c(TRUE, FALSE), d=c(10.5, 12.4, 15.1, 11.7)), size=2)
grade <- sample(c("A","B","C"), size =24, replace = TRUE, prob = c(0.25, 0.5, 0.25))
grade
table(grade)
# Probability Distribution
#uniform random Distribution
runif(10)
runif(10,1,1.1)
plot(runif(10,2,2.1))
hist(runif(100000,100,200),xlab="Value", ylab="frequency", col="lightgreen", border="black")

# normal random Distribution

rnorm(5)
rnorm(500)
rnorm(500,250,1)
plot(rnorm(500,250,1))
hist(rnorm(5000,250,1),xlab="values",ylab="frequency",col="lightblue", border="black")

# summary
x<- rnorm(100)
mean(x)
m<- sum(x)/length(x)
mean(x,trim=0.05)

median(x)

c(min(x),max(x))
range(x)

quantile(x)
quantile(x, probs = seq(0,1,0.1))

summary(x)


sqrt(-4)
polyroot(c(-1,2,1))

c(1,2,3)

sample(seq(1:10),4,TRUE)
x<- rnorm(1000)
mean(x)
sum(x)/length(x)
median(x)
summary(x)
quantile(x)

y <- 1.5 * x + 0.75 * rnorm(length(x))
cov(x,y)
cor(x,y)

z = runif(length(x))
comb = cbind(x, y, z)
cov(comb)
cor(comb)
