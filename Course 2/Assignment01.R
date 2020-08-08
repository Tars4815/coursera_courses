#Assignment 1

#Part 1 - "pollutantmean" function

directory <- getwd()

pollutantmean <- function(directory, pollutant,id=1:332){
  csv_list<-list.files(path=directory, pattern = ".csv")
  record <- numeric()
  for (i in id){
    data <- read.csv(csv_list[i])
    record<-c(record,data[[pollutant]])
  }
  mean(record, na.rm=T)
}

#Part 2 - "complete" function

complete <- function(directory, id=1:332){
 csv_list<-list.files(path=directory, pattern=".csv")
 num <- numeric()
 for (i in id){
   data <- read.csv(csv_list[i])
   sum_complete <- sum(complete.cases(data))
   num <- c(num,sum_complete)
 }
 data.frame(id,num)
}

#Part 3 - "corr" function

corr <- function(directory, threshold = 0){
  csv_list <- list.files(path=directory, pattern=".csv")
  df <- complete(directory)
  ids <- df[df["num"] > threshold, ]$id
  corrr <- numeric()
  for(i in ids){
    data <- read.csv(csv_list[i])
    dff <- data[complete.cases(data), ]
    corrr <- c(corrr, cor(dff$sulfate, dff$nitrate))
  }
  return(corrr)
}
