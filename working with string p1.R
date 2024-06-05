hello
"hello" # Strings are shown in green

str1 <- "Hello"
str1

for(i in 1:3){
  "hello"
}

test2 <- function(x){
  "Hello"
}

test2("word")

str1
print(str1)

for(i in 1:3){
  print(str1)
}

test3 <- function(x){
  print("hello")
  print(x)
}

test3_1 <- function(x){
  print("hello")
  print(x)
}

test3('students')

test3_1('Guys')

test3 <- function(x){
  cat("hello" ,x)
}

name <- "Kaiwalya"
lang<- "r"
cat("hello", name,"todays topic is", lang)

cat("hello", name,"todays topic is", lang,sep=" ")
cat("hello", name,"todays topic is", lang,sep="")
cat("hello", name,"todays topic is", lang,sep=",")

text <- "This is a long line of text that will be broken into multiple lines after every 20 characters."
wrapped_text <- strwrap(text, width = 20)
cat(wrapped_text, sep = "\n")

#Message function -> used to diagnostic messages, warnings, or other information
message("hello,",name,",we are learning", lang,".")

message("This is a message without a newline at the end.", appendLF = FALSE)
message("This is on the same line.")

message("This is a message without a newline at the end.")
message("This is on the same line.")

x <- 5
y <- 7
message("The sum of x and y is:", expr=x + y)

for(i in 1:3){
  cat(letters[i])
}

for(i in 1:3){
  message(letters[i])
}

for(i in 1:3){
  cat(letters[i],"\n")
}

#Paste ->Concatenating String
new1 <- paste("hello","world")
new1
names <- c("Alice", "Bob", "Charlie")
actions <- c("runs", "jumps", "swims")
paste(names,actions,sep=',')
paste(names,actions)
paste(names,actions,sep=',',collapse = " ")

# If we want to print the text as a message
#not as a character vector with indices,
str(message(1,2,3,4))
str(cat(1,2,3,4))
typeof(cat(1,2,3,4))

cat(c("a","b"),c("c","d"))
message(c("a","b"),c("c","d"))

for(i in 1:3){cat(letters[i])}
for(i in 1:3){message(letters[i])}
for(i in 1:3){cat(letters[i],"\n")}

paste(c("a","b"),c("c","d"))
typeof(paste(c("a","b"),c("c","d")))
paste(c("a","b"),c("c","d"), sep="?")
paste("Hello","Students")
paste("a","b","c","d")
paste(c("a","b"),c("c","d"))
paste(c("a","b"),c("c","d"), collapse=" ")

x<-cat(c("pranay","bunty"),c("abhishek","rohit"), sep="/")
x
new <- cat("hello","world")
new
new1 <- paste("hello","world")
new1
new2<- message("hello","world")
new2

cat(c('mayur','rushi'),c('abhay','pranit'))
paste(c('mayur','rushi'),c('abhay','pranit'))
message(c('mayur','rushi'),c('abhay','pranit'))

# Transforming Text
#1. chartr
cha<- "abcabcbacdef"
chartr('abc','121',cha)

#2. tolower
tolower("KAIWALYA")

#3. toupper
toupper('kaiwalya')

calc <- function(type, x, y) {
  type <- tolower(type)
  if (type == "add") {
    x + y 
  } else if (type == "times") {
    x * y
  } else {
    stop("Not supported type of command")
  }
}

calc('AdD',4,5)

#4. casefold
word<- 'Abcdef'
casefold(word,upper = T)
casefold(word)

# Counting Character
nchar("Kaiwalya")
nchar(c("Learn","R","Programming"))
nchar(c("Learn","R",NA,"Programming",NA),type = 'width')
nchar(c("Learn","R",NA,"Programming",NA),type = 'bytes')

#trimws->
?trimws()
trimws(c("   learn","   R","    Programming"))
trimws(c("learn","R","Programming"),which="both" )
trimws(c("           learn","R","             Programming"),which="left")
print(c("           learn","R","             Programming"))
trimws(c("           learn","R","             Programming             "),which="left")
trimws(c("learn","R","Programming             "),which="right")
trimws(c("           learn          ","       R          ","             Programming             "),which="left")
trimws(c("           learn          ","       R          ","             Programming             "),which="both")
trimws(c("           learn          ","       R          ","             Programming             "),which="right")
trimws(".....hellooo my students.....",whitespace = ".")
trimws(".....hellooo my students.....",whitespace = "[.]")
# Substring
dates <- c("Jan 6","jun 30","sep 15")
dates[1]
substr(dates,1,3)
substr(dates,2,4)
substr(dates,3,4)
substr(dates,4,5)

names<- c('Anuj','Rohit','Vaibhav','Akash','Vishal', 'Ishant')
substr(names,1,9)
substr(names,1,7)
substr(names,1,3)
nchar(dates)
nchar(names)
dates[1]
substr(dates, 5, nchar(dates))
nchar(dates)
substr(dates,1,6)
substr(dates, 1, 3) <- c("Mar", "Jul", "Oct")
dates
add_on <- c('Feb 1','Mar 15','Apr 4', 'May17')
add_on2 <- c('Jul 18','Aug 20')
add_on3 <- c('Oct 12','Nov 15', 'Dec 30')
dates <- c(dates[1],add_on,dates[2],add_on2,dates[3],add_on3)
dates