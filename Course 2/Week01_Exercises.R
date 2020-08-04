# Course2 - Week 1 exercises
x <- 1 # This is a comment
print(x) # Explicit printing
x
msg <- "hello world"
x <- 1:20 # Integer sequence

#Data types - Vectors and Lists
x <- c(0.5, 0.6) #numeric
x <- c(TRUE, FALSE) #logical
x <- c(T,F) #logical
x <- c("a", "b", "c") #character
x <- 9:29 #integer
x <- vector("numerical",length=10)

#Mixing objects -> Coercion (every element in the vector is of the same class)
y <- c(1.7, "a") #character
y <- c(TRUE, 2) #numeric
y <- c("a",TRUE) #character

#Explicit coercion - Not always possible!!
x <- 0:6
class(x)
as.numeric(x)
as.logical(x)
as.character(x)

#Lists
x <- list(1,"a",TRUE, 1+4i)

#Data Types - Matrices
m <- matrix(nrow =2, ncol=3)
dim(m)
attributes(m)

m<-matrix(1:6,nrow=2,ncol=3)
m <- 1:10
dim(m) <- c(2,5)

x<-1:3
y<-10:12
cbind(x,y)
rbind(x,y)

#Data Types - Factors
#Categorical data
x <- factor(c("yes","yes","no","yes","no"))
table(x)
unclass(x)
attr(x,"levels")
x <- factor(c("yes","yes","no","yes","no"),levels=c("yes","no"))

#Data Types - Missing Values
x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x <-c(1,2,NaN,NA,4)
is.na(x)
is.nan(x)

#Data Types - Data Frames
x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x
nrow(x)
ncol(x)

#Data Types - Names Attribute
x <- 1:3
names(x)
names(x) <- c("foo","bar","norf")
names(x)
x<-list(a=1,b=2,c=3)
names(x)
m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m

# Reading Tabular Data
data <- read.table("foo.txt") #For small and medium size table where the other tag could be ignored

# Reading Large Tables
initial <- read.table("datatable.txt", nrows=100)
classes <- sapply(initial, class)
tabAll <- read.table("datatable.txt", colClasses= classes)

#Textual Data Formats
y <-data.frame(a =1, b="a")
dput(y)
dput(y,file ="y.R")
new.y <- dget("y.R")
new.y

x <- "foo"
y <-data.frame(a =1, b="a")
dump(c("x","y"), file = "data.R")
rm(x,y)
source("data.R")
y
x

# Connections: Interfaces to the Outside World
str(file)

con <- gzfile("woords.gz") #Create connection with compressed file
x <- readLines(con,10) #read only the first 10 lines of the connected fil

con <- url("http://www.jhsph.edu", "r")
x <- readLines(con)
head(x)

# Subsetting - Basics
x <- c("a", "b", "c")
x[1]
x[3]
x[1:3]
x[x>"a"]
u <- x > "a"
x[u]

#Subsetting - Lists
x <- list(foo=1:4, bar=0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x[c(1,2)]

#Subsetting - Matrices
x <- matrix(1:6,2,3)
x[1,2]

#Subsetting - Removing Missing Values
x <- c(1,2,NA,4,NA,5)
bad <-is.na(x)
x[!bad]

x <- c(1,2,NA,4,NA,5)
y <- c("a","b",NA, "d",NA,"f")
good <- complete.cases(x,y)
good
x[good]
y[good]

airquality[1:6,]
good <- complete.cases(airquality)
airquality[good,][1:6,]

## WEEK 1 QUIZ

#What are the column namee of the given dataset?
data <- unzip("quizdat.zip")
data <- read.csv("hw1_data.csv")
names(data)

#Extract the first 2 rows
data[1:2,]

#How many observations are included in this data frame?
nrow(data)

#Extract the last 2 rows
data[152:153,]

#Ozone value in the 47th row
data$Ozone[47]

#Count the missing values in the Ozone column
sum(is.na(data$Ozone))

#Mean of Ozone column without NA
mean(data$Ozone, na.rm=TRUE)

#Mean of Temp when Month is equal to 6
mean(data[which(data$Month == 6)]$Temp)

