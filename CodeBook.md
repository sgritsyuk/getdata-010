#CodeBook


## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Download: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Data Set Transformations

* Step 1: Load data (train, test data and subjects and activity labels and features) saved to "uci_har" directory
* Step 2: Merge train and test data (separately for X and Y data)
* Step 3: Attach feature names to merged X-data, it became main dataset
* Step 4: Select and filter only mean and std columns from dataset
* Step 5: Transform feature labels of dataset to make it more readable
* Step 6: Convert Y-data to column of activity names
* Step 7: Join main dataset with activities column
* Step 8: Calculate means by activity column for dataset
* Step 9: Write results of steps 7 and 8 to separate text files

## Tidy Data Description

Resulted dataset contains 66-feature columns filtered from original 561-feature raw dataset plus additional column for "Activity".

Time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.

Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.

Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

**All feature values are normalized and bounded within [-1, 1].**
 
Rules for column (feature) naming:

* 't' / 'f' - separates time and frequency domain signals
* 'Acc' / 'Gyro' - separates accelerometer and gyroscope signals
* 'Body' / 'Gravity' / 'Jerk' - separates Body, Gravity and Jerk signal types
* 'Mag' - magnitude for three-dimensional signals
* 'Mean' / 'StdDev' - separates mean and standard deviation for signals
* 'X' / 'Y' / 'Z' - separates signals by axis

## Tidy Data List of Fields

All fields are grouped for better understanding. The meaning of all fields below is descripted above.

* *tBodyAccMean[X-Y-Z]* and *tBodyAccStdDev[X-Y-Z]*
* *tGravityAccMean[X-Y-Z]* and *tGravityAccStdDev[X-Y-Z]*
* *tBodyAccJerkMean[X-Y-Z]* and *tBodyAccJerkStdDev[X-Y-Z]*
* *tBodyGyroMean[X-Y-Z]* and *tBodyGyroStdDev[X-Y-Z]*
* *tBodyGyroJerkMean[X-Y-Z]* and *tBodyGyroJerkStdDev[X-Y-Z]*
* *tBodyAccMagMean* and *tBodyAccMagStdDev*
* *tGravityAccMagMean* and *tGravityAccMagStdDev*
* *tBodyAccJerkMagMean* and *tBodyAccJerkMagStdDev*
* *tBodyGyroMagMean* and *tBodyGyroMagStdDev*
* *tBodyGyroJerkMagMean* and *tBodyGyroJerkMagStdDev*
* *fBodyAccMean[X-Y-Z]* and *fBodyAccStdDev[X-Y-Z]*
* *fBodyAccJerkMean[X-Y-Z]* and *fBodyAccJerkStdDev[X-Y-Z]*
* *fBodyGyroMean[X-Y-Z]* and *fBodyGyroStdDev[X-Y-Z]*
* *fBodyAccMagMean* and *fBodyAccMagStdDev*
* *fBodyBodyAccJerkMagMean* and *fBodyBodyAccJerkMagStdDev*
* *fBodyBodyGyroMagMean* and *fBodyBodyGyroMagStdDev*
* *fBodyBodyGyroJerkMagMean* and *fBodyBodyGyroJerkMagStdDev*

and 

* *Activity* - activity performed by volunteers


## How to use script

*NOTE: script have no any specific dependencies.*

* Download the raw data by link above and put all unzipped data into a directory where the script located.
* Run ```source("run_analysis.R")```.
* Results will be generated in files ```uci_har.txt``` and ```uci_har_means.txt``` of your working directory.
