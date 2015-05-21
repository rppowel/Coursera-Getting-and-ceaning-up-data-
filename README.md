The R script contained here (run_analysis.R) was developed in May 2015 by Rich Powell as an assignment for the Coursera 'Getting and Cleaning Up Data' course project. The script downloads, tidies, and summarizes a dataset from the 'Human Activity Recognition Using Smartphones' experiment conducted by the University of California, Irvine. 

The script does the following per the assignment's instructions:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Upon execution, run_analysis.R will download the dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, combine and clean up the data files, and save the final data set (described in step 5, above) as a tab delimited .txt file in the working directory. The script will also load two data frames into memory: 
x - the cleaned up dataset with means and standard deviation measurements, and 
summary - the average of the measurements in x, grouped by activity and subject.
summary - the average of the measurements in x, grouped by activity and subject.

The run_analysis.R script was created using the following software/versions:
R version 3.1.2 (2014-10-31)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Attached base packages: stats, graphics, grDevices, utils, datasets, methods, base
Other attached packages: dplyr_0.4.0, plyr_1.8.1 

The CodeBook.md file further describes the data, variables, and transformations used in the script.