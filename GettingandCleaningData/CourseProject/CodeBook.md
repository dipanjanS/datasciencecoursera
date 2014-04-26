### Getting & Cleaning Data Course Project CodeBook
---------------------------------------------------

#### <ins>Dataset details</ins>

 * __Original Dataset Name:__ Human Activity Recognition Using Smartphones Data Set
 * __Dataset File Name:__ getdata-projectfiles-UCI HAR Dataset
 * __Dataset Download Link:__ https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
 * __Dataset Source:__ Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory. Data can be found online on the UCI Machine Learning Repository 

#### <ins>Dataset description</ins>

The Human Activity Recognition database was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

| Data Set Characteristics  | Number of Instances | Number of Attributes  | Number of activities | Number of subjects |
| :-----------------------: | :-----------------: | :-------------------: | :------------------: | :----------------: |
| Multivariate, Time-Series | 10299               | 561                   | 6                    | 30                 |


The folder structure of the dataset is as follows

```	
		UCI HAR Dataset/                                                                                  
   			|                                                                                               
   			|---------- activity_labels.txt                                                                 
   			|---------- features.txt                                                                        
   			|---------- features_info.txt                                                                  
   			|---------- README.txt                                                                  
   			|---------- run_analysis.R ( you have to paste it here )                                                                   
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

A brief description of the data files are provided below.

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.