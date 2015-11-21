## load all required data from the UCI HAR Dataset
testX <- read.table('./UCI HAR Dataset/test/X_test.txt')
testY <- read.table('./UCI HAR Dataset/test/y_test.txt')
testSubject <- read.table('./UCI HAR Dataset/test/subject_test.txt')
trainX <- read.table('./UCI HAR Dataset/train/X_train.txt')
trainY <- read.table('./UCI HAR Dataset/train/y_train.txt')
trainSubject <- read.table('./UCI HAR Dataset/train/subject_train.txt')
activityLabels <- read.table('./UCI HAR Dataset/activity_labels.txt')
features <- read.table ('./UCI HAR Dataset/features.txt')

## merge X, Y and Subject data from train and tests sets to single set
dataX <- rbind(testX, trainX)
dataY <- rbind(testY, trainY)
dataSubject <- rbind(testSubject, trainSubject)

## set columnnames of datasets
names(dataX) <- c(as.character(features[, 2]))
names(dataY) <- 'activity'
names(dataSubject) <- 'subject'

## merge into a single data set
dataMerged <- cbind(dataSubject, dataY, dataX)

## create list of columns that contain measurements on the mean or standard deviation
meanColumns <- grep('-mean', names(dataMerged))
stdColumns <- grep('-std', names(dataMerged))
columns <- c(meanColumns, stdColumns)

## filter dataset and keep activity, subject and matched columns
dataMerged <- dataMerged[ ,c(1, 2, columns)]

## replace the numeric activity data with their name from the activitylabels file
dataMerged[ ,2] <- activityLabels[dataMerged[ ,2], 2]

## create dataset with the average of each variable for each activity and each subject
tidyData <- aggregate(dataMerged[,3:81], by=list(subject=dataMerged$subject,activity=dataMerged$activity), FUN=mean)

## write new dataset to file names tidydata.txt
write.table(tidyData, file='tidydata.txt', row.names=FALSE)