complete <- function(directory, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  
  files <- list.files(directory)
  df <- data.frame(id=NA,nobs=NA)
  
  count <- 1
  for (i in id){
    file_name <- paste(getwd(),"/",directory,"/",files[i], sep="")
    f <- read.csv(file_name)
    cases <- complete.cases(f)
    df[count,] <- rbind(c(i,sum(cases)))
    
    count <- count + 1
  }
  
  df
  
}