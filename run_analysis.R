# Script for processing UCI HAR Dataset (raw data)
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# to tidy data

# load raw data
activityLabels <- read.table("./activity_labels.txt")[,2]
features <- read.table("./features.txt")[,2]
# train
trainSubject <- read.table("./train/subject_train.txt")
trainX <- read.table("./train/X_train.txt")
trainY <- read.table("./train/y_train.txt")
# test
testSubject <- read.table("./test/subject_test.txt")
testX <- read.table("./test/X_test.txt")
testY <- read.table("./test/y_test.txt")

# merge train and test data
mergedX <- rbind(trainX, testX)
mergedY <- rbind(trainY, testY)

# attach feature names to X-merged data
names(mergedX) <- features
# select only mean and std columns
featuresSelected <- grep("mean\\(\\)|std\\(\\)", features)
# ... and filter it 
dataset <- mergedX[, featuresSelected]

# make feature labels more readable
datasetNames <- names(dataset)
datasetNames = gsub("[-()]", "", datasetNames)
datasetNames = gsub("-mean", "Mean", datasetNames)
datasetNames = gsub("-std", "StdDev", datasetNames)
datasetNames = gsub("mean", "Mean", datasetNames)
datasetNames = gsub("std", "StdDev", datasetNames)
names(dataset) <- datasetNames

# convert Y-data to activity names
activities <- sapply(mergedY, (function(id) activityLabels[id]))
colnames(activities)[1] <- "Activity"

# join dataset with activities column
dataset <- data.frame(dataset, activities)
# calculate means by activity column
datasetMeans <- aggregate(dataset[,1:66], by = list(Activity = dataset$Activity), mean)

# write results to text files
write.table(dataset, file = "./uci_har.txt", row.names = FALSE)
write.table(datasetMeans, file = "./uci_har_means.txt", row.names = FALSE)
