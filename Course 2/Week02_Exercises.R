# Course2 - Week 2 exercises
#Control structures - If-Else
if(x>3) {
  y<-10
} else {
  y<-0
}
y

#Control structures - For loops
for(i in 1:10){
  print(i)
}
x<-c("a","b","c")
for (i in 1:3){
  print(x[i])
}
for (letter in x){
  print(letter)
}
for (i in seq_along(x)){
  print(x[i])
}

x<-matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}

#Control structures - For loops
count<-0
while(count<10){
  print(count)
  count = count+1
}

#Functions
add2 <- function(x,y){
  x+y
}