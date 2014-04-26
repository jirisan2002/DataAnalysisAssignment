CodeBook for run_analysis.R and summaryData.txt
========================================================

Data Transformation Process
-------------------------------------------------------
## Required package for the script: "reshape2" 
* load raw data of train subjects: 
  "train/X-train.txt", dimension = 7352X561
* load raw test data: 
  "test/X-test.txt", dimension = 2947X561
* load variable file:
  "features.txt", 561 variable names
* add two variables "ID" and "activity" to indicate the test subjects     
  and the six measured activities 
* add the data for subject "ID" and "activity" in the train and test group
  -- two additional columns in each data set (563 columns)
* construct complete test and train datasets including "ID" and "activity   
  variables
*  combine the train and test data using rbind
   -- dim(combined) = 10229X563
*  extract columns of "mean"(mean) and "sd"(std) of each measurements
*  and combine them together 
*  calculate the means of each column (or activities)
*  make a new data displaying the means of measurements per subject and 
   activity
   
Variables
-----------------------------------------------------------
ID -- identification of test subjects, 1 - 30
activity -- 6 activities the test subjects performed for measurements

other measurements -- refer to the attached link for other variables

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
