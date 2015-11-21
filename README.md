This repository was created for the course project as part of the Getting and cleaning data course offered on Coursera.

The run_analysis.R script provided within this repository will produce an independent tidy data set with the average of each variable for each activity and each subject as provided in the data source. The data source is required for the script to function and can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information on the data source is provided here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each    activity and each subject.

Outcome of the script is saved in a generated tidydata.txt file.