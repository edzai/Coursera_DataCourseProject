# Program Assignment on *Getting and Cleaning Data*

## Synopsis

As a course project to *Getting and Cleaning Data* on Coursera, this project will 
download and extract raw data from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] automatically, and complete the following steps as is instructed.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Requirements

* Libraries
	* reshape2

## Usage

```
> source("run_analysis.R") # Might run for quite a while if you have a slow connection / disk.
>                          # Check "tidyData.txt" in working directory
```

## Files & Folders

* CodeBook.md - the code book
* README.md - this file
* lib/ - libraries to be loaded via `source()`
	* fetch.R - network and file checks
	* main.R - data processing
* data/ - placeholder to download and extract raw data
