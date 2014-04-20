corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  
  files <- list.files(directory)
  
  cases <- complete(directory)
  
  file_nums <- subset(cases,nobs > threshold,id)
  file_nums <- as.vector(t(file_nums))
  
  corr_vector <- numeric()
  
  for (i in file_nums){
    file_name <- paste(getwd(),"/",directory,"/",files[i], sep="")
    f <- read.csv(file_name)
    
    complete_data <- complete.cases(f)
    f <- f[complete_data,]
    
    
    x <- f[['sulfate']]
    y <- f[['nitrate']]
    
    corr_vector <- c(corr_vector, cor(x,y))

  }
  
  corr_vector
  
}