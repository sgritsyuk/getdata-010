# Getting and Cleaning Data Course Project

This is source code developed by Sergey Gritsyuk as a part of Coursera Getting and Cleaning Data Course Project (getdata-010).

The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## Project description

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Repository files

* README.md - this file with brief description of repository
* CodeBook.md - a code book that describes the variables, the data, and any transformations or work performed to prepare the data
* run_analysis.R - R script that transform input raw data (Human Activity Recognition Using Smartphones) to tidy data

## Purpose of the script 

R script called run_analysis.R does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## How to use script

*NOTE: script have no any specific dependencies.*

* Download the raw data by link above and put into a directory "uci_har" on the same level there directory of script located.
* Run ```source("run_analysis.R")```.
* Results will be generated in files ```uci_har.txt``` and ```uci_har_means.txt``` of your working directory. 