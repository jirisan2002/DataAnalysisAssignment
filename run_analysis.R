##file name = run_analysis.R##
##############################
## load "reshape2" library
library(reshape2)
run_analysis <- function(){

##loading raw train data: "~/HAR/train/X-train.txt"
train <- read.table("HAR/train/X_train.txt", header=FALSE, sep="")
#dim(train) = 7352X561
#loading raw test data: "~/HAR/test/X-test.txt"
test <- read.table("HAR/test/X_test.txt", header=FALSE, sep = "")
#dim(test) = 2947X561
#loading variable file "~/HAR/features.txt"
features <- read.table("HAR/features.txt", header=FALSE, sep="")
variables <- as.character(features[,2])
##Add variables "ID" and "activity" to indicate the test subjects and the
##the six measured activities 
variables <- append(c("ID", "activity"), variables)

## subjects in the train and test group
train_subject <- read.table("HAR/train/subject_train.txt", header = FALSE, sep = "")
test_subject <- read.table("HAR/test/subject_test.txt", header = FALSE, sep = "")

## activities (one of the 6 activities) measured
train_label <- read.table("HAR/train/y_train.txt", header=FALSE, sep = "")
test_label <- read.table("HAR/test/y_test.txt", header=FALSE, sep = "")

## dataset of test and trainsubjects including 
## "ID" and "activity" variables
testset <- cbind(test_subject, test_label, test)
trainset <- cbind(train_subject, train_label, train)

#combine the train and test data using rbind
combined <- rbind(trainset, testset)
names(combined) <- variables
#dim(combined) = 10229X563

#extract columns of "mean"(mean) and "sd"(std) of each measurements
#and combine them together 
means <- combined[ ,grepl("mean", names(combined), ignore.case = T)]
sds <- combined[ ,grepl("std", names(combined), ignore.case = T)]
subs <- cbind(combined$ID, combined$activity, means, sds)

## rename the first and second columns -- "ID" and "activity"
colnames(subs)[1] <- "ID"
colnames(subs)[2] <- "activity"

##calculate the means of each column (or activities) and make 
##a new data displaying the values (variables = "activities" and 
## "averages")
melted <- melt(subs, id = c("ID", "activity"), measure.var = 3:88)
summaryData <- dcast(melted, ID + activity ~ variable, mean)
summaryData
}
