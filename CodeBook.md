## Collection of the raw data
The source of the data is: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Raw data information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The dataset includes the following files:
* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

For each record in the dataset it is provided: 
* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Creating the tidy data file

### Create file
To create the tidy data file the raw data source has to be downloaded and placed within the working directory of the R script. After placing the data the run_analysis.R script should be used which will produce the dataset in a file named: tidydata.txt.

### Cleaning of the data
The R script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each  activity and each subject.

## Description of the variables in the tidydata.txt file

### General description
The tidydata file contains a data set of 180 observations with 81 variables. It contains the average of each variable for each activity and each subject on measurements on the mean and standard deviation.

### List of variables
* subject (int)
* activity (Factor)
* tBodyAcc-mean()-X (num)
* tBodyAcc-mean()-Y (num)
* tBodyAcc-mean()-Z (num)
* tGravityAcc-mean()-X (num)
* tGravityAcc-mean()-Y (num)
* tGravityAcc-mean()-Z (num)
* tBodyAccJerk-mean()-X (num)
* tBodyAccJerk-mean()-Y (num)
* tBodyAccJerk-mean()-Z (num)
* tBodyGyro-mean()-X (num)
* tBodyGyro-mean()-Y (num)
* tBodyGyro-mean()-Z (num)
* tBodyGyroJerk-mean()-X (num)
* tBodyGyroJerk-mean()-Y (num)
* tBodyGyroJerk-mean()-Z (num)
* tBodyAccMag-mean() (num)
* tGravityAccMag-mean() (num)
* tBodyAccJerkMag-mean() (num)
* tBodyGyroMag-mean() (num)
* tBodyGyroJerkMag-mean() (num)
* fBodyAcc-mean()-X (num)
* fBodyAcc-mean()-Y (num)
* fBodyAcc-mean()-Z (num)
* fBodyAcc-meanFreq()-X (num)
* fBodyAcc-meanFreq()-Y (num)
* fBodyAcc-meanFreq()-Z (num)
* fBodyAccJerk-mean()-X (num)
* fBodyAccJerk-mean()-Y (num)
* fBodyAccJerk-mean()-Z (num)
* fBodyAccJerk-meanFreq()-X (num)
* fBodyAccJerk-meanFreq()-Y (num)
* fBodyAccJerk-meanFreq()-Z (num)
* fBodyGyro-mean()-X (num)
* fBodyGyro-mean()-Y (num)
* fBodyGyro-mean()-Z (num)
* fBodyGyro-meanFreq()-X (num)
* fBodyGyro-meanFreq()-Y (num)
* fBodyGyro-meanFreq()-Z (num)
* fBodyAccMag-mean() (num)
* fBodyAccMag-meanFreq() (num)
* fBodyBodyAccJerkMag-mean() (num)
* fBodyBodyAccJerkMag-meanFreq() (num)
* fBodyBodyGyroMag-mean() (num)
* fBodyBodyGyroMag-meanFreq() (num)
* fBodyBodyGyroJerkMag-mean() (num)
* fBodyBodyGyroJerkMag-meanFreq() (num)
* tBodyAcc-std()-X (num)
* tBodyAcc-std()-Y (num)
* tBodyAcc-std()-Z (num)
* tGravityAcc-std()-X (num)
* tGravityAcc-std()-Y (num)
* tGravityAcc-std()-Z (num)
* tBodyAccJerk-std()-X (num)
* tBodyAccJerk-std()-Y (num)
* tBodyAccJerk-std()-Z (num)
* tBodyGyro-std()-X (num)
* tBodyGyro-std()-Y (num)
* tBodyGyro-std()-Z (num)
* tBodyGyroJerk-std()-X (num)
* tBodyGyroJerk-std()-Y (num)
* tBodyGyroJerk-std()-Z (num)
* tBodyAccMag-std() (num)
* tGravityAccMag-std() (num)
* tBodyAccJerkMag-std() (num)
* tBodyGyroMag-std() (num)
* tBodyGyroJerkMag-std() (num)
* fBodyAcc-std()-X (num)
* fBodyAcc-std()-Y (num)
* fBodyAcc-std()-Z (num)
* fBodyAccJerk-std()-X (num)
* fBodyAccJerk-std()-Y (num)
* fBodyAccJerk-std()-Z (num)
* fBodyGyro-std()-X (num)
* fBodyGyro-std()-Y (num)
* fBodyGyro-std()-Z (num)
* fBodyAccMag-std() (num)
* fBodyBodyAccJerkMag-std() (num)
* fBodyBodyGyroMag-std() (num)
* fBodyBodyGyroJerkMag-std() (num)