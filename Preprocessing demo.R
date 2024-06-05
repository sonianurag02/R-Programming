#loading dataset
dataset<- read.csv("C:\\Users\\HP\\Downloads\\Details.csv")
dataset<- data.frame(dataset)
# Inspecting the data
str(dataset)
summary(dataset)
head(dataset)
tail(dataset,10)

# Checking for null values
sum(is.na(dataset))

# converting categorical variables in factor/ levels
dataset$Order.ID<- as.factor(dataset$Order.ID)
dataset$Category <- as.factor(dataset$Category)
dataset$Sub.Category <- as.factor(dataset$Sub.Category)
dataset$PaymentMode <- as.factor(dataset$PaymentMode)
levels(dataset$Category)
# inspecting dataset
str(dataset)
head(dataset)

# outliers
q1_amount = quantile(dataset$Amount,0.25)
q1_amount
q3_amount= quantile(dataset$Amount, 0.75)
q3_amount
iqr <- q3_amount - q1_amount
iqr

IQR(dataset$Amount, na.rm = FALSE)

outliers = dataset$Amount<(q1_amount-1.5*iqr) | dataset$Amount>(q3_amount+1.5 * iqr)
outliers
data <- dataset[!outliers,]
View(data)

# one hot encoding
library(caret)
install.packages("caret")

dummy_vars <- dummyVars(~Category + Sub.Category+ PaymentMode , data = data )
dummy_data <- predict(dummy_vars, newdata = data)
data_with_dummy <- cbind(data, dummy_data)
View(data_with_dummy)
data_with_dummy <- data_with_dummy[ ,c(-5,-6,-7)]
View(data_with_dummy)

#standardization
data_with_dummy$Amount <- scale(data_with_dummy$Amount)
data_with_dummy$Amount

#min - max scaling
normalize <- function(x) { (x - min(x)) / (max(x) - min(x)) }
data$numeric_column <- normalize(data$numeric_column)
data_with_dummy$MMAmount <- normalize(data_with_dummy$Amount)
data_with_dummy$MMAmount
