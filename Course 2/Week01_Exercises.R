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

