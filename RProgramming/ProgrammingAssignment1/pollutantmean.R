pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  
  pollutant_vector <- numeric()
  
  
  
  files <- list.files(directory)
  
  for (i in id){
    file_name <- paste(getwd(),"/",directory,"/",files[i], sep="")
    
    f <- read.csv(file_name)
    values <- f[[pollutant]]
    pollutant_vector <- c(pollutant_vector,values)
    
  }

  mean(pollutant_vector,na.rm=TRUE)
  
}