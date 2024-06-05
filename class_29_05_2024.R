x <- "Let's start it R programing."
print(x)
cat(x)
message(x)
paste(x)

x1 <- "A"
y1 <- "B"
message(x1, y1)
print(c(x1, y1))
cat(x1, y1)
paste(x1, y1)

# Transform 
x3 <- "Double precision value"
x4 <- "double precision value"

country <- c("India", "india", "INDIA")
# capital words have diff size as compare to small case characters
# casefold
# tolower
# toupper

casefold(x3, upper=T)
casefold(x3, upper=F) # -> tolower

tolower("ABC")
x4 <- "ABC"
tolower(x4)

toupper("char")
toupper(x3)

calc <- function(x,y,operation){
  operation = tolower(operation)
  if(operation == "add"){x+y}
  else if(operation == "subs"){x-y}
  else if(operation == "mul"){x*y}
  else if(operation == "div"){x/y}
  else{"Mention correct operation"}
}
calc(2,3,"add")

# nchar()
?nchar

nchar("R Programming")
nchar("R Programming", type="bytes")
nchar("R Programming", type = "width")

#trimws()
# ws -> whitespace

x6 <- "                  Let's goooo              "
trimws(x6)
?trimws
# trimws(variable, which = , whitespace = )
trimws(x6, which = "both")
trimws(x6, which = "left")
trimws(x6, which = "right")

x7 <- "/////////////////hey"
trimws(x7, which = "both", whitespace = "[/]")

dates <- c("Jan 6", "Jun 30", "Sep 15")
months <- substr(dates, 1, 3)
months
date <- substr(dates, 5, 7)
date


x<-"你好，世界" 
nchar(x, type="chars")
nchar(x, type="bytes")

# Apply trim function on following string 
z1 <- "                   helllooo.                "
trimws(z1, which = "both")

x2 <- "                   what's up"
trimws(x2, which = "left")

x3<-"let's.                       "
trimws(x3, which = "right")

x4<- "/////////////study"
trimws(x4, which="both", whitespace = "[/]")

x5<- " (((((((((R programming!!!!!!!!!!!!!"
trimws(x5, whitespace = "[(\\!]")

# C-style formatting (text formatting)
# %s, %d, %a, %f, %e

name <- "Anurag"
sprintf("My name is %s", name)
sprintf("My name is %10s", name)
sprintf("My name is %-10s", name)

age <- 25
sprintf("My age is %d", age)
sprintf("My age is %f", age)

dish <- "Biryani"
size <- 1
sprintf("I have ordered %s of size %dk", dish, size)
sprintf("I have ordered %s of size %.2fk", dish, size)

name <- "anurag"
age <- 22
profession <- "Software Developer"
organization <- "Google"
cat(sprintf("Name: %s\nAge: %d\nOrganization: %s\nProfession: %s", name, age, organization, profession))

#parsing 

c_date <- Sys.Date()
c_date
str(c_date)

c_time <- Sys.time()
c_time
str(c_time)

as.numeric(Sys.Date())
# output: 19873 -> days after 1st jan 1970 as this date is used as 
# starting point for timekeeping in 

c_date + 60 # 60 days add unit days
c_time+100 # unit sec
c_time

date <- as.Date("1998-09-12")
date

time_tx <- "06:30:45"
# strftime()
# POSIXct()
# POSixlt()
strptime(time_tx, "%H:%M:%S")

my_time = as.POSIXct("2024-05-30 20:25:59")
my_time
str(my_time)

my_time_2 = as.POSIXlt("2024-05-30 20:25:59", tz="EST")
my_time_2

my_date_1 <- as.Date('1998.09.12', "%Y.%m.%d")
my_date_1

as.character('1998.09.12', format='%Y.%m.%d')

# Regular Expression
# ^ -> pattern starting
# \w -> single word
# \w+ -> multiple Word
# \s -> single space
# \s+ -> multiple spaces
# \d -> single digit
# \d+ -> multiple digits'''

?grep()
text <- c("apple","banana","cherry","date")
indices <- grep("a", text)
indices

logical_vector <- grepl("a", text)
print(logical_vector)

text_2 <- "The rain in Spain stays mainly in the plain"
new_text = sub("ain", "ail", text_2)
print(new_text)

new_text_2 = gsub("ain", "ail", text_2)
new_text_2

# csv => read
# readLines(path, n = number_of_lines)
# data <- read.csv("MCA(AIML) II A.csv")

#excel
library(readr)
install.packages("readr")
install.packages("ABACUS")
library(readr)
data <- read.csv("C:\\Users\\ASUS\\Desktop\\MASTERS\\2nd Sem\\R Programming for Data Science and Data Analytics\\matches.csv")
view(data)

plot(1:10)

x <- rnorm(300)
y <- 2*x + rnorm(300)
plot(x,y)
# for title -> main
# xlab -> x axis label
# ylab -> y axis label
plot(x, y, main = "Scatter Plot", xlab = "X axis", ylab = "Y Axis")

plot(
     x,y, 
     main = "Scatter plot", 
     xlab = "rnorm(300)", 
     ylab = "2*x + rnorm(300)",
     xlim = c(-1, 5),
     ylim = c(-5, 6)
)

range(x)
range(y)  

plot(0:25, 0:25,
     pch = 0:25,
     xlim = c(-1, 27),
     ylim = c(-1, 27),
     main = "Plotting style"
)

text(0:25+1, 0:25-1, 0:25)  

# plot(x, y, pch = 20)

x1 <- rnorm(200)
y1 <- rnorm(200)
  
x1
y1
range(x1)
range(y1)

plot(x1, y1, pch = ifelse(x1*y1 < 1, 1, 19), 
     main = "Scatter plot with condition")

plot(x,y)
# title = main
# labels(x - xlab, y - ylab)
# range(x - xlim, y - ylim)
# point(pch)

x <- rnorm(100)
y <- 1.7*x + rnorm(100)
z <- sqrt(1+x^4)+ rnorm(100)
e <- runif(100)

plot(x, y, pch = 1,
     xlim = range(x),
     ylim = range(y,z),
     xlab = "X axis",
     ylab = "Y axis",
     col = "blue"
     )
points(x,z,pch = 20, col = "red")
points(x,e,pch = 17, col = "green")

x = 1:20
y = 31:50
plot(x,y,
     main = "Scatter plot",
     xlim = range(y),
     xlab = 'X-axis',
     ylab = 'Y-axis')

x <- rnorm(100)
y <- 2*x + rnorm(100)
plot(x,y, pch = 21,
     col = ifelse(y>mean(y),"red","black"),
     main = "Scatter plot acc to color condition")

install.packages("ggplot2")

library(ggplot2)

# ggplot2
x <- rnorm(100)
y <- rnorm(100)
df <- data.frame(x,y)
ggplot(df, aes(x=x, y=y)) +
  geom_point(col = "blue") +
  ggtitle("ggplot2 scatter plt") +
  xlab("X-axis") +
  ylab("Y-axis")

# lattice
install.packages("lattice")
library(lattice)

xyplot(y~x, data = df)
xyplot(y~x, data = df, 
    main = "Scatter Plot Using Lattice",
    xlab = "X Point",
    ylab = "Y Point",
    col = "yellow",
    pch = 18)

# scatterplot3d
install.packages("scatterplot3d")
library(scatterplot3d)
x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)

scatterplot3d(x,y,z,
              main = "Scatter Plot 3d",
              xlab = "X-axis",
              ylab = "Y-axis",
              zlab = "Z-axis",
              color = "red",
              pch = 24)

# inbiult function -> plot
# ggplot2 -> ggplot()+ggpoint()
# lattice -> xyplot
# scatterplot3d -> scatterplot3d()

# line plot
x1 <- 1:40
y1 <- 1.5*cos(x1*pi/60)+rnorm(x1)
plot(x, y, type = "l", main = "Line Plot")

x1 <- 1:20
y1 <- 21:40
plot(x,y,type = "l")

# ann -> annotation, 
lty <- 1:6
# plot(lty, axes = T, ann = F, type = 'n')
# plot(lty, axes = T, ann = T, type = 'n')

plot(lty, axes = F, ann = F, type = 'n')
abline(h=lty, lwd=2, lty=lty)
mtext(lty, at = lty, side = 2, col = "darkblue")
mtext(lty, at = lty, side = 1, col = "blue")
mtext(lty, at = lty, side = 3, col = "red")
mtext(lty, at = lty, side = 4, col = "green")

x1 <- 1:50
y1 <- 2.7*cos(x1*pi/60) + rnorm(x1)
plot(x1, y1, type = "l", lwd = 2)
abline(h = mean(y1), col = "red", lty = 2)
abline(h = range(y1), col = "blue", lty = 3)
abline(v = x1[c(which.min(y1), which.max(y1))], col = "brown", lty = 3)
title("Line plot with auxiliary lines")

p <- 25
plot(x1[x1 <= p], y1[x1 <= p],
     type = "l",
     xlim = range(x1),
     xlab = "x1",
     ylab = "y1")
lines(x1[x1 >= p], y1[x1 >= p], lty = 2)
title("Two period line plot")

plot(y1, type = 'l')
points(y1, pch = 18)
title("Line plot with points")

plot(x1, type = "l")
points(x1)

# legends
x2 <- 1:30
y2 <- 1.5*x2 + 15*rnorm(30)
y3 <- 1.5*sqrt(x2)+8*rnorm(30) 
plot(x2, y2, type = "l", col = "red",
     ylim = range(y2, y3),
     ylab = "Y1 and Y2")
lines(y3, col = "darkblue", lty = 2)
title("Plot of two series")
legend("topleft",
       legend = c('y2','y3'),
       lty = c(1,2),
       col = c("red","darkblue"),
       cex = 0.8, x.intersp = 0.5,
       y.intersp = 0.9)

x2 <- 1:30
y2 <- 1.5*x2 + 15*rnorm(30)
y3 <- 1.5*sqrt(x2)+8*rnorm(30) 
plot(x2, y2, type = "l", col = "red",
     ylim = range(y2, y3),
     ylab = "Y1 and Y2")
points(y2, pch = 15)
lines(y3, col = "darkblue", lty = 2)
points(y3, pch = 20)
title("Plot of two series")
legend("topleft",
       legend = c('y2','y3'),
       lty = c(1,2),
       pch = c(15, 20),
       col = c("red","darkblue"),
       cex = 0.8, x.intersp = 0.5,
       y.intersp = 0.9)

# Line Plot with points

plot(x1, y1, type = 'o',
    main = "Line plot with points",
    xlab = "X-axis",
    ylab = "Y-axis",
    col = "red",
    pch = 20)

library(ggplot2)
df <- data.frame(x1, y1)
df
ggplot(df, aes(x = x1, y = y1)) + 
  geom_line(color = "purple") +
  ggtitle("ggplot line plot") + 
  xlab("X axis") +
  ylab("Y axis")

# bar plot

barplot(1:10, names.arg = LETTERS[1:10])

intr <- 1:10
names(intr) <- LETTERS[11:20]
barplot(intr)

install.packages('nycflights13')
library(nycflights13)  
ls("package:nycflights13")  
data("flights", package = "nycflights13")

carriers <- table(flights$carrier)
carriers
carriers_sort = sort(carriers, decreasing = T)
length(carriers_sort)

barplot(head(carriers_sort, 10),
        ylim = c(0,max(carriers_sort)*1.5),
        xlab = "Carriers",
        ylab = "Flights",
        main = "top 10 carriers ordered by number of flight.")

# number of flights by airline
library(ggplot2)
flights_by_airline <- aggregate(flights$carrier, 
                              by = list(flights$carrier),
                              FUN = length)
colnames(flights_by_airline) <- c("carrier", "num_flights")
flights_by_airline <- merge(flights_by_airline, airlines,
                            by.x = 'carrier',
                            by.y = 'carrier')

ggplot(flights_by_airline, aes(x = reorder(name, -num_flights),
                               y = num_flights))+
  geom_bar(stat = "identity",
           fill = "lightblue",
           color = "black")+
  labs(title = "Number of flights by airline", 
       x = "airline", y = "Number of fligts")+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# departure delay by month
avg_dep_delay_by_month <- aggregate(flights$dep_delay, by = list(flights$month),
          FUN = function(x) mean(x, na.rm = T))

colnames(avg_dep_delay_by_month) <- c("month","avg_dep_delay")

ggplot(avg_dep_delay_by_month, 
       aes(x = factor(month), y = avg_dep_delay)) +
  geom_bar(stat = "identity", fill = "lightblue",
           color = "black") +
  labs(title = "Average departure delay by month",
       x = "Month", y = "Average departure delay")

# Pie Chart
#general syntax => pie(values, labels radius, main(title), col, clockwise)

grades <- c(A = 12, B = 6, C = 25, D = 10)
pie(grades, main = "Pie chart for grades")

cate <- c('cat A', 'cat B', 'cat C', 'cat D')
sizes <- c(12, 10, 8, 20)
colors <- c('red', 'green', 'blue', 'pink')
pie(sizes, labels = cate, radius = 0.8,
    main = "Pie Chart", col = colors,
    clockwise = T)

cate <- c('cat A', 'cat B', 'cat C', 'cat D')
sizes <- c(12, 10, 8, 20)
colors <- c('red', 'green', 'blue', 'pink')
pie(sizes, labels = cate, radius = 0.8,
    main = "Pie Chart", col = rainbow(4),
    clockwise = T)

# histogram
# basic syntax => hist(values, name, xlab, xlim, ylim, breaks, col, border)

random_norm = rnorm(100)
hist(random_norm)

hist(rnorm(1000))

hist(rnorm(10000))

hist(rnorm(10000000))

random_norm <- rnorm(100000)
hist(random_norm, col = 'lightgrey',
     main = "Histogram for normally distributed data")

str(flights)

# flight speed
flight_speed <- flights$distance / flights$air_time
hist(flight_speed, main = "Distribution of flight speed",
     xlab = "flight speed")
abline(v = mean(flight_speed, na.rm = T), col = 'red', lty=2)

hist(random_norm, probability = T, col = 'lightgrey',
     main = "Histogram for normally distributed data")
curve(dnorm, add = T, lwd = 2, col = 'blue')

# boxplot
x <- rnorm(10000)
boxplot(x)

boxplot(distance/air_time ~ carrier, data = flights,
        main = "Box plot - Flight speed by carrier")







  
  
  
