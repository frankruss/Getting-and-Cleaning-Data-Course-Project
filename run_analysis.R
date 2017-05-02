
#-----------------------------------------------------
# Getting and Cleaning Data Course Project
# Purpose: The purpose of this project is to 
# demonstrate your ability to collect, work with, 
# and clean a data set.
# By: Frank Russolello
#-----------------------------------------------------

# Load dplyr - we will use it later
library(dplyr)


#
# 1. Merges the training and the test sets to create one data set.
#

# Set up working directory
setwd("D:/Frank/OneDrive/Data Science/Johns Hopkins Data Science/03 Getting and Cleaning Data/Week 04/Project")


# Read test files 
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")  
x_test <- read.table("UCI HAR Dataset/test/X_test.txt") 
y_test <- read.table("UCI HAR Dataset/test/y_test.txt") 

# Read train files
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")  
x_train <- read.table("UCI HAR Dataset/train/X_train.txt") 
y_train <- read.table("UCI HAR Dataset/train/y_train.txt") 

# Read activity labels: 
activity_labels = read.table('UCI HAR Dataset/activity_labels.txt') 

# Reading list of variables of each feature vector: 
features <- read.table('UCI HAR Dataset/features.txt')  


# 
# 4. Appropriately labels the data set with descriptive variable names.
#
colnames(x_test) <- paste(features$V2, features$V1)  
colnames(y_test) <- "activityid" 
colnames(subject_test) <- "subjectid" 

colnames(x_train) <- paste(features$V2, features$V1)
colnames(y_train) <- "activityid" 
colnames(subject_train) <- "subjectid" 

colnames(activity_labels) <- c('activityid','activity') 


# Perform the actual merge of the data
testdata <- cbind(y_test, subject_test, x_test) 
traindata <- cbind(y_train, subject_train, x_train) 
mergeddata <- rbind(traindata, testdata) 

#
# 3. Uses descriptive activity names to name the activities in the data set
#
activity <- activity_labels$activity[mergeddata$activityid]
mergeddata <- cbind(activity, mergeddata)

#
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#
meanstdcols <- grep("std|mean", colnames(mergeddata))
meanstddata <- cbind(select(mergeddata, activity, subjectid), select(mergeddata, meanstdcols))


#
# 5. From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
#

groupdata <- group_by(meanstddata, activity, subject)
tidydata <- summarise_each(groupdata, funs(mean))
write.table(tidydata, "tidy.txt") 
