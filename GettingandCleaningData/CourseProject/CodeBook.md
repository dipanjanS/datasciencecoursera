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

- `features_info.txt`: Shows information about the variables used on the feature vector.
- `features.txt`: List of all feature names.
- `activity_labels.txt`: Links the activity class labels with their activity name.
- `train/X_train.txt`: Training set of all the 561 features. Features are normalized and bounded within [-1,1].
- `train/y_train.txt`: Training labels of activities. Range is from 1 to 6.
- `test/X_test.txt`: Test set of all the 561 features. Features are normalized and bounded within [-1,1].
- `test/y_test.txt`: Test labels of activities. Range is from 1 to 6.
- `train/subject_train.txt`: Each row identifies the subject who performed the activity for each window sample. Range is from 1 to 30.
- `test/subject_test.txt`: Each row identifies the subject who performed the activity for each window sample. Range is from 1 to 30.



#### <ins>Tidy Dataset variables description</ins>

```
 • subjectid ---------------| Description - The person \ subject performing the activity 
 							| Type - int  
 							| Data - 1 1 1 1 1 1 2 2 2 2 ...

 • activityname ------------| Description - The kind of activity performed
                            | Type - Factor w/ 6 levels
                            | Data - "laying" "sitting" "standing" "walking" "walkingupstairs" "walkingdownstairs" ...

 • tbodyacc-mean-x ---------| Description - Mean accelerometer body acceleration in x-axis
 							| Type - num   
 							| Data - 0.222 0.261 0.279 0.277 0.289 ...

 • tbodyacc-mean-y ---------| Description - Mean accelerometer body acceleration in y-axis
 							| Type - num  
 							| Data - -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...

 • tbodyacc-mean-z ---------| Description - Mean accelerometer body acceleration in z-axis
 							| Type - num  
 							| Data - -0.113 -0.105 -0.111 -0.111 -0.108 ...

 • tbodyacc-std-x --------- | Description - Standard deviation of accelerometer body acceleration in x-axis
 							| Type - num           
 							| Data - -0.928 -0.977 -0.996 -0.284 0.03 ...

 • tbodyacc-std-y-----------| Description - Standard deviation of accelerometer body acceleration in y-axis
 							| Type - num           
 							| Data - -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...

 • tbodyacc-std-z ----------| Description - Standard deviation of accelerometer body acceleration in z-axis
 							| Type - num          
 							| Data - -0.826 -0.94 -0.98 -0.26 -0.23 ...

 • tgravityacc-mean-x ------| Description - Mean of accelerometer gravity acceleration measure in x-axis
 							| Type - num  
 							| Data - -0.249 0.832 0.943 0.935 0.932 ...

 • tgravityacc-mean-y ------| Description - Mean of accelerometer gravity acceleration measure in y-axis
 							| Type - num   
 							| Data - 0.706 0.204 -0.273 -0.282 -0.267 ...

 • tgravityacc-mean-z ------| Description - Mean of accelerometer gravity acceleration measure in z-axis
 							| Type - num   
 							| Data - 0.4458 0.332 0.0135 -0.0681 -0.0621 ...

 • tgravityacc-std-x -------| Description - Standard deviation of accelerometer gravity acceleration measure in x-axis
 							| Type - num  
 							| Data - -0.897 -0.968 -0.994 -0.977 -0.951 ...

 • tgravityacc-std-y -------| Description - Standard deviation of accelerometer gravity acceleration measure in y-axis
							| Type - num  
							| Data - -0.908 -0.936 -0.981 -0.971 -0.937 ...

 • tgravityacc-std-z -------| Description - Standard deviation of accelerometer gravity acceleration measure in z-axis
 							| Type - num  
 							| Data - -0.852 -0.949 -0.976 -0.948 -0.896 ...

 • tbodyaccjerk-mean-x -----| Description - Mean of time derivation of accelerometer body acceleration in x-axis
 							| Type - num   
 							| Data - 0.0811 0.0775 0.0754 0.074 0.0542 ...

 • tbodyaccjerk-mean-y -----| Description - Mean of time derivation of accelerometer body acceleration in y-axis
 							| Type - num   
 							| Data - 0.003838 -0.000619 0.007976 0.028272 0.02965 ...

 • tbodyaccjerk-mean-z------| Description - Mean of time derivation of accelerometer body acceleration in z-axis
 							| Type - num   
 							| Data - 0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...

 • tbodyaccjerk-std-x ------| Description - Standard deviation of time derivation of accelerometer body acceleration in x-axis
 							| Type - num  
 							| Data - -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...

 • tbodyaccjerk-std-y ------| Description - Standard deviation of time derivation of accelerometer body acceleration in y-axis
							| Type - num  
							| Data - -0.924 -0.981 -0.986 0.067 -0.102 ...

 • tbodyaccjerk-std-z ------| Description - Standard deviation of time derivation of accelerometer body acceleration in z-axis
 							| Type - num  
 							| Data - -0.955 -0.988 -0.992 -0.503 -0.346 ...

 • tbodygyro-mean-x --------| Description - Mean gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...

 • tbodygyro-mean-y --------| Description - Mean gyroscope body acceleration in y-axis
 							| Type - num
 							| Data - -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...

 • tbodygyro-mean-z --------| Description - Mean gyroscope body acceleration in z-axis
 							| Type - num
 							| Data - 0.1487 0.0629 0.0748 0.0849 0.0901 ...

 • tbodygyro-std-x ---------| Description - Standard deviation of gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.874 -0.977 -0.987 -0.474 -0.458 ...

 • tbodygyro-std-y ---------| Description - Standard deviation of gyroscope body acceleration in y-axis
 							| Type - num
 							| Data - -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...

 • tbodygyro-std-z ---------| Description - Standard deviation of gyroscope body acceleration in z-axis
 							| Type - num
 							| Data - -0.908 -0.941 -0.981 -0.344 -0.125 ...

 • tbodygyrojerk-mean-x ----| Description - Mean of time derivation of gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...

 • tbodygyrojerk-mean-y ----| Description - Mean of time derivation of gyroscope body acceleration in y-axis
 							| Type - num
 							| Data - -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...

 • tbodygyrojerk-mean-z ----| Description - Mean of time derivation of gyroscope body acceleration in z-axis
 							| Type - num
 							| Data - -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...

 • tbodygyrojerk-std-x -----| Description - Standard deviation of time derivation of gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.919 -0.992 -0.993 -0.207 -0.487 ...

 • tbodygyrojerk-std-y -----| Description - Standard deviation of time derivation of gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.968 -0.99 -0.995 -0.304 -0.239 ...

 • tbodygyrojerk-std-z -----| Description - Standard deviation of time derivation of gyroscope body acceleration in x-axis
 							| Type - num
 							| Data - -0.958 -0.988 -0.992 -0.404 -0.269 ...

 • tbodyaccmag-mean --------| Description - Magnitude of  tbodyacc-mean calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...

 • tbodyaccmag-std ---------| Description - Magnitude of  tbodyacc-std calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...

 • tgravityaccmag-mean -----| Description - Magnitude of  tgravityacc-mean calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...

 • tgravityaccmag-std ------| Description - Magnitude of  tgravityacc-std calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...

 • tbodyaccjerkmag-mean ----| Description - Magnitude of  tbodyaccjerk-mean calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...

 • tbodyaccjerkmag-std -----| Description - Magnitude of  tbodyaccjerm-std calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...

 • tbodygyromag-mean -------| Description - Magnitude of  tbodygyro-mean calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...

 • tbodygyromag-std --------| Description - Magnitude of  tbodygyro-std calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.819 -0.935 -0.979 -0.187 -0.226 ...

 • tbodygyrojerkmag-mean ---| Description - Magnitude of  tbodygyrojerk-mean calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.963 -0.992 -0.995 -0.299 -0.295 ...

 • tbodygyrojerkmag-std ----| Description - Magnitude of  tbodygyrojerk-std calculated using Euclidean norm 
 							| Type - num
 							| Data - -0.936 -0.988 -0.995 -0.325 -0.307 ...

 • fbodyacc-mean-x ---------| Description - Fast Fourier Transform of tbodyacc-mean-x
							| Type - num
							| Data - -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...

 • fbodyacc-mean-y ---------| Description - Fast Fourier Transform of tbodyacc-mean-y
							| Type - num
							| Data - -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...

 • fbodyacc-mean-z ---------| Description - Fast Fourier Transform of tbodyacc-mean-z
							| Type - num
							| Data - -0.883 -0.959 -0.985 -0.332 -0.226 ...

 • fbodyacc-std-x ----------| Description - Fast Fourier Transform of tbody-acc-std-x
							| Type - num
							| Data - -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...

 • fbodyacc-std-y ----------| Description - Fast Fourier Transform of tbody-acc-std-y
							| Type - num
							| Data - -0.834 -0.917 -0.972 0.056 -0.113 ...

 • fbodyacc-std-z ----------| Description - Fast Fourier Transform of tbody-acc-std-z
							| Type - num
							| Data - -0.813 -0.934 -0.978 -0.28 -0.298 ...

 • fbodyaccjerk-mean-x -----| Description - Fast Fourier Transform of tbodyaccjerk-mean-x
							| Type - num
							| Data - -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...

 • fbodyaccjerk-mean-y -----| Description - Fast Fourier Transform of tbodyaccjerk-mean-y
							| Type - num
							| Data - -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...

 • fbodyaccjerk-mean-z -----| Description - Fast Fourier Transform of tbodyaccjerk-mean-z
							| Type - num
							| Data - -0.948 -0.986 -0.991 -0.469 -0.288 ...

 • fbodyaccjerk-std-x ------| Description - Fast Fourier Transform of tbodyaccjerk-std-x
							| Type - num
							| Data - -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...

 • fbodyaccjerk-std-y ------| Description - Fast Fourier Transform of tbodyaccjerk-std-y
							| Type - num
							| Data - -0.932 -0.983 -0.987 0.107 -0.135 ...

 • fbodyaccjerk-std-z ------| Description - Fast Fourier Transform of tbodyaccjerk-std-z
							| Type - num
							| Data - -0.961 -0.988 -0.992 -0.535 -0.402 ...

 • fbodygyro-mean-x --------| Description - Fast Fourier Transform of fbodygyro-mean-x
 							| Type - num
 							| Data - -0.85 -0.976 -0.986 -0.339 -0.352 ...

 • fbodygyro-mean-y --------| Description - Fast Fourier Transform of fbodygyro-mean-y
 							| Type - num
 							| Data - -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...

 • fbodygyro-mean-z --------| Description - Fast Fourier Transform of fbodygyro-mean-z
 							| Type - num
 							| Data - -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...

 • fbodygyro-std-x ---------| Description - Fast Fourier Transform of fbodygyro-std-x
 							| Type - num
 							| Data - -0.882 -0.978 -0.987 -0.517 -0.495 ...

 • fbodygyro-std-y ---------| Description - Fast Fourier Transform of fbodygyro-std-y
 							| Type - num
 							| Data - -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...

 • fbodygyro-std-z ---------| Description - Fast Fourier Transform of fbodygyro-std-z
 							| Type - num
 							| Data - -0.917 -0.944 -0.982 -0.437 -0.238 ...

 • fbodyaccmag-mean --------| Description - Magnitude of fbodyacc-mean calculated using Euclidean norm
 							| Type - num
 							| Data - -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...

 • fbodyaccmag-std ---------| Description - Magnitude of fbodyacc-std calculated using Euclidean norm
 							| Type - num
 							| Data - -0.798 -0.928 -0.982 -0.398 -0.187 ...

 • fbodybodyaccjerkmag-mean | Description - Magnitude of fbodyaccjerk-mean calculated using Euclidean norm
 							| Type - num
 							| Data - -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...

 • fbodybodyaccjerkmag-std -| Description - Magnitude of fbodyaccjerk-std calculated using Euclidean norm
 							| Type - num
 							| Data - -0.922 -0.982 -0.993 -0.103 -0.104 ...

 • fbodybodygyromag-mean ---| Description - Magnitude of fbodygyro-mean calculated using Euclidean norm
 							| Type - num
 							| Data - -0.862 -0.958 -0.985 -0.199 -0.186 ...

 • fbodybodygyromag-std ----| Description - Magnitude of fbodygyro-std calculated using Euclidean norm
 							| Type - num
 							| Data - -0.824 -0.932 -0.978 -0.321 -0.398 ...

 • fbodybodygyrojerkmag-mean| Description - Magnitude of fbodygyrojerk-mean calculated using Euclidean norm
 							| Type - num
 							| Data - -0.942 -0.99 -0.995 -0.319 -0.282 ...

 • fbodybodygyrojerkmag-std | Description - Magnitude of fbodygyrojerk-std calculated using Euclidean norm
 							| Type - num
 							| Data - -0.933 -0.987 -0.995 -0.382 -0.392 ...

 ```