About run_analysis.R
========================================================
Summary of HUman Activites measured by Samsung Smart Phone
JirisanHunter
--------------------------------------------------------------------
Various human activities of 30 volunteers were measured using a portable device (Samsung smartphone).  Refer to the following for further information:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The purpose of this study was to extract "means" and "standrd deviations" of each measurements of the 30 indivduals' six activities (WALKING, WALKING-UPSTAIRS, WALKING-DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone on the waist. 


### Files attached: 
##run_analysis.R -- 
R script used to assemble the raw data, extract columns containing "mean" and "std"(standad deviation) and reshape containing average values of the "mean"s and "std"s of each individual's six activities.  The raw data contains 86 colummns containing "mean" and "std" and each individual (total 30 individuals) was tested for 6 activities.  The number of resulting data frame of the script should therefore have 88 columns (86 measurements + "ID"" (individual ID) and "activity"") and 180 rows (30 indivuals * 6 activities)

## CodeBook.md --
This file describes how the tidy data are generated from the raw data and variables and their descriptions

## link to data set "subs.txt" --
the first tidy data obtained from the raw data -- only contains columns with "mean" and "std".  this is used for further data treatment to generate the final summaryData.txt that display the means per individual per activity

## summaryData.txt --
the final summary data containing measurements of means of each activity of each individuals.  this is the resulting table of the "run_analysis.R"
