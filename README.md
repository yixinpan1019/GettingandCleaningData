Getting and Cleaning Data
=========================

This repository contains scripts and codebook for course project done as part of [_Getting and Cleaning Data_](https://class.coursera.org/getdata-005/) course on Coursera.
The project performs clean up of the _Human Activity Recognition Using Smartphones_ data set downloaded from [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Files:
* **run_analysis.R** - this script will look for the data set (zipped) in the current working directory. If the data set is not there, the script will download it. Make sure you set the working directory in R to the directory where you have write permissions before executing the script. At the end of script execution, current R session will contain two data frames (_df_ and _tidy_df_), described in the code book. Additionally, _tidy_df_ data frame will be saved to **tidy.txt** file in the current working directory.
* **CodeBook.md** - the code book, describing variables in _df_ and _tidy_df_ data frames as well as transformation performed on source data to derive these two data frames.
* **README.md** - this file
