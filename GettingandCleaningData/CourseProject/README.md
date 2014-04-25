### Getting & Cleaning Data Course Project
-------------------------------------------

#### <ins>Brief Introduction</ins>

This project is based on one of the most exciting areas in all of data science right now, which is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website and also in the link given below, represent data collected from the accelerometers from the Samsung Galaxy S smartphone and we have to use this data for our project and perform some computations and processing on it.

#### <ins>Main Objective</ins>

The main objective of this project is to demonstrate our ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. The main deliverables for this project are as follows.

	1) a tidy data set as described below
	2) a link to a Github repository with your script for performing the analysis
	3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md
	4) a readme file namely README.md explaining how to run the script, what it does and how it works

#### <ins>Script Execution Instructions</ins>

The following are the main steps to be reproduced to execute the scripts and get the required tidy datasets.

 - Download the `UCI HAR Dataset` if you haven't done so already by clicking this link: [Download dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
 - Extract the downloaded zip file to a location of your choice in your system 
 - Download the `run_analysis.R` file from this repository and copy and paste it inside the `UCI HAR Dataset` folder
 - Your folder structure should look as follows
 	```	
		UCI HAR Dataset/                                                                                  
   			|                                                                                               
   			|---------- activity_labels.txt                                                                 
   			|---------- features.txt                                                                        
   			|---------- features_info.txt                                                                  
   			|---------- README.txt                                                                  
   			|---------- run_analysis.R                                                                    
   			|                                                                                             
   			|---------- test                                                                                
   			|             |---------- Inertial Signals                                             
   			|             |               |---------- Other Files...                               
            |             |                                                   
   			|             |---------- X_test.txt                                                   
   			|             |---------- y_test.txt                                                  
   			|             |---------- subject_test.txt                                            
   			|                                                                                     
   			|---------- train                                                                      
   			              |---------- Inertial Signals                                            
   			              |               |---------- Other Files...                            
   			              |                                                                       
   			              |---------- X_train.txt                                                
   			              |---------- y_train.txt                                                 
   			              |---------- subject_train.txt  

    ``` 
 - Now you should execute the `run_analysis.R` script. It can be done in two ways, please use the one you find most convenient.
 	- __Using RStudio:__
 	 	* Open up RStudio IDE first and open the `run_analysis.R` script file if you want to see the code.
      * In the console of RStudio, change the current working directory to the `UCI HAR Dataset` directory using the following command. Please be careful about the slashes `/` or `\` in your path, especially in Windows, I would recommend to use the front slash `/` in the path.
			```
			setwd("Drive name:/Path_to_your_directory/UCI HAR Dataset")
			Example ( for my system ) : setwd("E:/MOOCs/Coursera/Data Science - Specialization/Getting and Cleaning Data/Peer Assessment Project/UCI HAR Dataset")
			```

		* Now execute the script using the following command in the R console `source("run_analysis.R",chdir=TRUE)` and if you reproduced the above steps correctly, you should see some messages printed by the script on the screen which are self descriptive.
      * Finally go to the `UCI HAR Dataset` from your file explorer to see the output datasets.

 	- __Using the Terminal \ Command line:__
      * Open up your command line ( cmd ) or terminal, if on Windows, make sure your R directory is added to your path, else set your path first using the following command in the command line `set path=%PATH%;"c:\Program Files\R\R-3.0.3\bin"`. Note the path to your R installation may be different so change it accordingly.
      * Now navigate to the `UCI HAR Dataset` directory using the `cd` command, like for my system if by default the prompt is `C:\>` I would first type the drive where my directory is, i.e., `E:` and then I would run the `cd E:/MOOCs/Coursera/Data Science - Specialization/Getting and Cleaning Data/Peer Assessment Project/UCI HAR Dataset` command.  
      * Now execute the script using the following command in the command line \ terminal `Rscript run_analysis.R` and if you reproduced the above steps correctly, you should see some messages printed by the script on the screen which are self descriptive.
      * Finally go to the `UCI HAR Dataset` from your file explorer to see the output datasets.  
 - After running the script by using any one of the above methods, go to the `UCI HAR Dataset` folder as told and you can see some new files, namely, `clean_data.csv` and `tidy_data.csv` which are the two tidy datasets as we were directed to create in the project. The detailed contents of the datasets are explained in the `CodeBook.md` file. The `clean_data.txt` and `tidy_data.txt` are just tab-separated text file versions which contain the same data as the CSV files. If needed, open up the files using appropriate applications to examine their contents.   
           
#### <ins>Script Working Details</ins>

The following points highlight the key working of the `run_analysis.R` script in detail and focus is mainly on the working. For more details about data frames, variables and datasets have been discussed in the `CodeBook.md` file. Please refer to it as and when needed.

 - First it reads in the required feature data from the files `X_train.txt` and `X_test.txt` and combines them to form the `featureData` data frame with dimensions of `10299 x 561`
 - Next, it reads in the respective activity identifiers from the files `y_train.txt` and `y_test.txt` and combines them to form the  `activityLabels` data frame with dimensions of `10299 x 1`
 