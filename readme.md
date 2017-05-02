
## Readme

Prepared by Frank Russolello
for the Getting and Cleaning Data Project

## Files created for this project:

* run_analysis.R - script to merge, clean, and summarize data. 
* codebook.md - code book describing the source data and transformations.
* reamde.md - this file

## Source data files used: 

## Test files:
* UCI HAR Dataset/test/subject_test.txt 
* UCI HAR Dataset/test/X_test.txt
* UCI HAR Dataset/test/y_test.txt

## Train files:
* UCI HAR Dataset/train/subject_train.txt
* UCI HAR Dataset/train/X_train.txt
* UCI HAR Dataset/train/y_train.txt

## Activity labels: 
* UCI HAR Dataset/activity_labels.txt

## Features: 
* UCI HAR Dataset/features.txt


## run_analyis.r

* Sets up working directory

* Reads test files 

* Reads train files

* Reads activity labels

* Reads features
 
* Labels the data set with descriptive variable names

* Performs merge of the data

* Extracts only the measurements on the mean and standard deviation for each measurement

* Groups by activity and subject and calculates average for all remaining measurements

* Saves result to tidy.txt


