This repository was created for the course project as part of the Getting and cleaning data course offered on Coursera.

The run_analysis.R script provided within this repository will produce an independent tidy data set with the average of each variable for each activity and each subject as provided in the data source. The data source is required for the script to function and can be downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

More information on the data source is provided here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script does the following:

1. Load all required data from the data source
2. Merges X, Y and Subject data from train and tests sets to single sets
3. Set columnnames of datasets
4. Merge into a single data set
5. Create list of columns that contain measurements on the mean or standard deviation
6. Filter dataset and keep activity, subject and matched columns
7. Replace the numeric activity data with their name from the activitylabels file
8. Create dataset with the average of each variable for each activity and each subject
9. Write new dataset to file named tidydata.txt

Outcome of the script is saved in a generated tidydata.txt file.