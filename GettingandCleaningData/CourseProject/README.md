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
 	 	* In the console of RStudio, change the current working directory to the `UCI HAR Dataset` directory using the following command. Please be careful about the slashes `/` or `\` especially in Windows I would recommend to use the front slash `/` in the path.
			```
			setwd("Drive name:/Path_to_your_directory/UCI HAR Dataset")
			Example ( for my system ) : setwd("E:/MOOCs/Coursera/Data Science - Specialization/Getting and Cleaning Data/Peer Assessment Project/UCI HAR Dataset")
			```

		* Now
 	- __Using the Terminal \ Command line:__
      * do         
           
