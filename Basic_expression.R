a<- b<- c<- 10
a
a<-10->b

a1<- function(xvalue,yvalue){
  cat("value of x = ", xvalue)
  cat("value of y = ", yvalue)
}
x=1
y=0.5
a1(xvalue = x,yvalue = y)

x<-1
y<-0.5
a1(xvalue = x,yvalue = y)

x<-1
y<-0.5
a1(xvalue <- x,yvalue <- y)

x=1
y=0.5
a1(xvalue <- x,yvalue <- y)

x<-1
y<-0.5

a1(xvalue = x,yvalue = y)

a1(yvalue = y,xvalue = x)

a1(xvalue <- x,yvalue <-y)

a1(yvalue<-y , xvalue<- x)

# Backticks
_students <- c(1,2,3)
`_students`<-c(1,2,3)

x.name<- c('a','b','c')
x.name
new name<- c('x','y','z')
`new name`<- c('x','y','z')

# if as statement
test_positive = function(x){
  if (x > 0){return(1)}}
test_positive(2)

assign_grade <- function(marks) {
  if (marks >= 90) {return("A")}
  else if (marks >= 80){return("B")}
  else if (marks >= 70) {return("C")}
  else if (marks >= 60) {return("D")}
  else {return("F")}
}

# if as expression
test_positive = function(x){
  return(if  (x > 0){1})}

assign_grade <- function(name, marks) {
  grade <- if (marks >= 90) "A"
  else if (marks >= 80) "B"
  else if (marks >= 70) "C"
  else if (marks >= 60) "D"
  else "F"
  cat("The sudent ",name," scored ", grade)
  }

assign_grade('k',66)

# if as vector
num <- c(1, 2, 3)
if (num > 2) {cat("num > 2!")} # error

if (any(num>2)){cat('num is greater than than')}

if (all(num>2)){cat("all no. are greater than 2")} else {cat("no.aren't greater than 2")}

a = c(4, 5, 6, 7)
ifelse(a %% 2 == 0, "Even", "Odd")

# SWITCH
switch(2,1,2,3,4,5,6,7,8,9,10)
switch("color",shape = "rect",color = "blue", fill="not-filled")
switch("frame",shape = "rect",color = "blue", fill="not-filled")

# loop
for (i in 1:3){
  cat("Printing value of i",i,"\n")
  }

m <- integer()
for (i in 1000:1100) {
  if ((i ^ 2) %% 11 == (i ^ 3) %% 17) {
    m <- c(m, i)
    }
  }

n<- integer()
for (i in 101:1000){
  if (1%%2==0){n<-c(i)}
}
n

for (word in c("hey","how's","you")){
  cat("Printing current word", word,"\n")
}

listloop <- list(
 a = c(1:10),
 b = c('p','q','r','s','t','u')
)

for(item in listloop){
  cat('item: \n length:',length(item),'\n class:',class(item),'\n')
}

for (i in 1:5) {
  if (i == 4) break
  cat("message ", i, "\n")
  }

m <- integer()
for (i in 1000:1100) {
  if ((i ^ 2) %% 11 == (i ^ 3) %% 17) {
     m <- c(m, i)}}
m

for (i in 1000:1100) {
  if ((i ^ 2) %% 11 == (i ^ 3) %% 17) break
  }
i

for (i in 1:5) {
  if (i == 3) next
  cat("message ", i, "\n")
}

input <- c("1", "2", "3")
perm <- character()
for (x in input) {
  for (y in input) {
    perm <- c(perm, paste(x, y, sep = ","))
    }
   }
perm

input <- c("a", "b", "c")

z <- character()
for (x in input) {
  for (y in input) {
    if (x == y) next
    z <- c(z, paste(x, y, sep = ","))
    }
   }
z

combn(c("a","b","c","d"),2)

expand.grid(num=c("1", "2", "3"),chr=c("a", "b", "c"))

x <- 2
while (x <= 10) {
  cat(x," ",sep = "")
  x <- x + 1 }

y2<- 0
while (TRUE) {
  y2 <- y2 + 1
  if (y2 == 4) break
  else if (y2 == 2) next
  else cat(y2, '\n')
  }
 
