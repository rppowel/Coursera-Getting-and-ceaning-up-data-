library(plyr) #plyr needs to be loaded first so the summarize function is masked by dplyr
library(dplyr)

# Download and unzip the data ---------------------------------------------

temp <- tempfile() # create a temportary fils
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,temp) # download the data to the temp file
unzip(temp) #unzip the folder
unlink(temp)

setwd("./UCI HAR Dataset") # set the working directory to the UCI HAR Dataset folder

# Merge the training and the test sets ------------------------------------

# Read in the test and train data sets
xtrain<-read.table("./train/X_train.txt")
xtest<-read.table("./test/X_test.txt")

# add test/train labels to the data sets
xtrain<-mutate(xtrain,type="Train")
xtest<-mutate(xtest,type="Test")

# Merge the data sets into one
x<-rbind(xtrain,xtest)
rm(xtrain,xtest) # remove the unused data sets from memory


# Extract only the measurements on the mean and standard deviation --------

# Read in the features Dataset
features<-read.table("features.txt")

# Find the features that correstpond to a mean or st dev
filtervars<-grep("mean|std",features[,2]) # find rows that match "mean" or "std"
features<-tbl_df(features) # convert features to df table
msfeatures<-filter(features,V1 %in% filtervars) # create a collection of mean and standard dev features. 
rm(features) # remove df from memory

# Use the msfeatures df to filter the test/train dataset
x<-x[,filtervars]


# name the activities in the data set -------------------------------------

# Read in and merge the activity codes
ytrain<-read.table("./train/y_train.txt")
ytest<-read.table("./test/y_test.txt")
y<-rbind(ytrain,ytest)
rm(ytrain,ytest) # remove unused datasets

# Read in the activity labels
actlab<-read.table("activity_labels.txt")

# Translate the actifity codes to descriptive names
y$activity<-mapvalues(y$V1,actlab$V1,as.vector(actlab$V2))

# Add labels to dataset
x$activity<-y$activity
rm(y)  # remove the unused data sets from memory
rm(actlab)  # remove the unused data sets from memory


# Label the data set with descriptive variable names ----------------------

# Create more readable names for the variables,

# make 'R friendly' column names
msfeatures<-msfeatures %>%
   mutate(colnames=gsub("()-",".",V2,fixed=TRUE)) %>%
   mutate(colnames=gsub("-",".",colnames,fixed=TRUE))
colnames(x)<-c(as.vector(msfeatures$colnames),"activity") #note the activities are in the last colum at this point
rm(msfeatures)  # remove the unused data sets from memory


# Add subject column to dataset -------------------------------------------

# Read in the subject labels
subtrain<-read.table("./train/subject_train.txt")
subtest<-read.table("./test/subject_test.txt")
subject<-rbind(subtrain,subtest) # combine the train/test data
rm(subtrain,subtest) # remove the unused data sets from memory

# add the subject column to the dataset
x$subject<-subject$V1
rm(subject) # remove the unused data sets from memory

# Move the subject and activity columns to the front of the dataset
x<-select(x,activity,subject,1:(ncol(x)-2))

# Create dataset w/ avg of each variable for each activity/subject --------

summarized<-x %>% group_by(activity,subject) %>% summarise_each(funs(mean))


# Create output file ------------------------------------------------------
setwd("..") # reset the working directory

write.table(summarized,file="run_analysis_output.txt",row.names=FALSE, sep='\t')

