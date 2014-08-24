Getting and Cleaning Data
=========================

This repo explains how all of the scripts work and how they are connected.
The project performs clean up of the _Human Activity Recognition Using Smartphones_ data set downloaded from [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### The run_analysis.R script does the following:
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set.
* Appropriately labels the data set with descriptive activity names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
 

Steps to reproduce this project
-------------------------------

1. Open the R script `run_analysis.r` using a text editor.
2. Change the parameter of the `setwd` function call to the working directory/folder (i.e., the folder where these the R script file is saved).
3. Run the R script `run_analysis.r`. It calls the R Markdown file, `run_analysis.Rmd`, which contains the bulk of the code.

Files:
* **run_analysis.R** - this script will look for the data set (zipped) in the current working directory.
* **CodeBook.md** - the code book, describing variables in _df_ and _tidy_df_ data frames as well as transformation performed on source data to derive these two data frames.

