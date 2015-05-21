*********************************************************
Raw Data
*********************************************************
The data come from the 'Human Activity Recognition Using Smartphones' experiment conducted by the University of California, Irvine. They can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

*********************************************************
Data transformations and manipulation
*********************************************************
The run_analysis.R script combines, cleans up, and summarizes the data. The steps below provide a high-level outline of the code's operations.
1. Download and unzip the data 
2. Merge the X_train and X_test sets
3. Extract the measurements for means and standard deviations only
4. Map the activity names from activity_labels.txt to the dataset
5. Label the data set with descriptive variable names
6. Map the subjects to the dataset 
7. Summarize the data: take the average of each measurement for each activity/subject
8. Write the summarized data set to a text file named 'run_analysis_output.txt'

*********************************************************
Output Variables
*********************************************************
Column Number, Column names, and Column descriptions
1 activity = activity performed by subject
2 subject = subject who's movements were measures
3 tBodyAcc.mean.X = Time Domain Signals for body accelerometer measurement: Mean value for the x-axix
4 tBodyAcc.mean.Y = Time Domain Signals for body accelerometer measurement: Mean value for the y-axix
5 tBodyAcc.mean.Z = Time Domain Signals for body accelerometer measurement: Mean value for the z-axix
6 tBodyAcc.std.X = Time Domain Signals for body accelerometer measurement: Standard deviation for the x-axix
7 tBodyAcc.std.Y = Time Domain Signals for body accelerometer measurement: Standard deviation for the y-axix
8 tBodyAcc.std.Z = Time Domain Signals for body accelerometer measurement: Standard deviation for the z-axix
9 tGravityAcc.mean.X = Time Domain Signals for gravity accelerometer measurement: Mean value for the x-axix
10 tGravityAcc.mean.Y = Time Domain Signals for gravity accelerometer measurement: Mean value for the y-axix
11 tGravityAcc.mean.Z = Time Domain Signals for gravity accelerometer measurement: Mean value for the z-axix
12 tGravityAcc.std.X = Time Domain Signals for gravity accelerometer measurement: Standard deviation for the x-axix
13 tGravityAcc.std.Y = Time Domain Signals for gravity accelerometer measurement: Standard deviation for the y-axix
14 tGravityAcc.std.Z = Time Domain Signals for gravity accelerometer measurement: Standard deviation for the z-axix
15 tBodyAccJerk.mean.X = Time Domain Signals for body accelerometer jerk measurement: Mean value for the x-axix
16 tBodyAccJerk.mean.Y = Time Domain Signals for body accelerometer jerk measurement: Mean value for the y-axix
17 tBodyAccJerk.mean.Z = Time Domain Signals for body accelerometer jerk measurement: Mean value for the z-axix
18 tBodyAccJerk.std.X = Time Domain Signals for body accelerometer jerk measurement: Standard deviation for the x-axix
19 tBodyAccJerk.std.Y = Time Domain Signals for body accelerometer jerk measurement: Standard deviation for the y-axix
20 tBodyAccJerk.std.Z = Time Domain Signals for body accelerometer jerk measurement: Standard deviation for the z-axix
21 tBodyGyro.mean.X = Time Domain Signals for body gyroscope measurement: Mean value for the x-axix
22 tBodyGyro.mean.Y = Time Domain Signals for body gyroscope measurement: Mean value for the y-axix
23 tBodyGyro.mean.Z = Time Domain Signals for body gyroscope measurement: Mean value for the z-axix
24 tBodyGyro.std.X = Time Domain Signals for body gyroscope measurement: Standard deviation for the x-axix
25 tBodyGyro.std.Y = Time Domain Signals for body gyroscope measurement: Standard deviation for the y-axix
26 tBodyGyro.std.Z = Time Domain Signals for body gyroscope measurement: Standard deviation for the z-axix
27 tBodyGyroJerk.mean.X = Time Domain Signals for body gyroscope jerk measurement: Mean value for the x-axix
28 tBodyGyroJerk.mean.Y = Time Domain Signals for body gyroscope jerk measurement: Mean value for the y-axix
29 tBodyGyroJerk.mean.Z = Time Domain Signals for body gyroscope jerk measurement: Mean value for the z-axix
30 tBodyGyroJerk.std.X = Time Domain Signals for body gyroscope jerk measurement: Standard deviation for the x-axix
31 tBodyGyroJerk.std.Y = Time Domain Signals for body gyroscope jerk measurement: Standard deviation for the y-axix
32 tBodyGyroJerk.std.Z = Time Domain Signals for body gyroscope jerk measurement: Standard deviation for the z-axix
33 tBodyAccMag.mean() = Time Domain Signals for body accelerometer magnitude: Mean value
34 tBodyAccMag.std() = Time Domain Signals for body accelerometer magnitude: Standard deviation
35 tGravityAccMag.mean() = Time Domain Signals for gravity accelerometer magnitude: Mean value
36 tGravityAccMag.std() = Time Domain Signals for gravity accelerometer magnitude: Standard deviation
37 tBodyAccJerkMag.mean() = Time Domain Signals for body accelerometer jerk magnitude: Mean value
38 tBodyAccJerkMag.std() = Time Domain Signals for body accelerometer jerk magnitude: Standard deviation
39 tBodyGyroMag.mean() = Time Domain Signals for body gyroscope magnitude: Mean value
40 tBodyGyroMag.std() = Time Domain Signals for body gyroscope magnitude: Standard deviation
41 tBodyGyroJerkMag.mean() = Time Domain Signals for body gyroscope jerk magnitude: Mean value
42 tBodyGyroJerkMag.std() = Time Domain Signals for body gyroscope jerk magnitude: Standard deviation
43 fBodyAcc.mean.X = Frequency Domain Signals for body accelerometer measurement: Mean value for the x-axix
44 fBodyAcc.mean.Y = Frequency Domain Signals for body accelerometer measurement: Mean value for the y-axix
45 fBodyAcc.mean.Z = Frequency Domain Signals for body accelerometer measurement: Mean value for the z-axix
46 fBodyAcc.std.X = Frequency Domain Signals for body accelerometer measurement: Standard deviation for the x-axix
47 fBodyAcc.std.Y = Frequency Domain Signals for body accelerometer measurement: Standard deviation for the y-axix
48 fBodyAcc.std.Z = Frequency Domain Signals for body accelerometer measurement: Standard deviation for the z-axix
49 fBodyAcc.meanFreq.X = Frequency Domain Signals for body accelerometer measurement: Weighted average of the frequency components to obtain a mean frequency for the x-axix
50 fBodyAcc.meanFreq.Y = Frequency Domain Signals for body accelerometer measurement: Weighted average of the frequency components to obtain a mean frequency for the y-axix
51 fBodyAcc.meanFreq.Z = Frequency Domain Signals for body accelerometer measurement: Weighted average of the frequency components to obtain a mean frequency for the z-axix
52 fBodyAccJerk.mean.X = Frequency Domain Signals for body accelerometer jerk measurement: Mean value for the x-axix
53 fBodyAccJerk.mean.Y = Frequency Domain Signals for body accelerometer jerk measurement: Mean value for the y-axix
54 fBodyAccJerk.mean.Z = Frequency Domain Signals for body accelerometer jerk measurement: Mean value for the z-axix
55 fBodyAccJerk.std.X = Frequency Domain Signals for body accelerometer jerk measurement: Standard deviation for the x-axix
56 fBodyAccJerk.std.Y = Frequency Domain Signals for body accelerometer jerk measurement: Standard deviation for the y-axix
57 fBodyAccJerk.std.Z = Frequency Domain Signals for body accelerometer jerk measurement: Standard deviation for the z-axix
58 fBodyAccJerk.meanFreq.X = Frequency Domain Signals for body accelerometer jerk measurement: Weighted average of the frequency components to obtain a mean frequency for the x-axix
59 fBodyAccJerk.meanFreq.Y = Frequency Domain Signals for body accelerometer jerk measurement: Weighted average of the frequency components to obtain a mean frequency for the y-axix
60 fBodyAccJerk.meanFreq.Z = Frequency Domain Signals for body accelerometer jerk measurement: Weighted average of the frequency components to obtain a mean frequency for the z-axix
61 fBodyGyro.mean.X = Frequency Domain Signals for body gyroscope measurement: Mean value for the x-axix
62 fBodyGyro.mean.Y = Frequency Domain Signals for body gyroscope measurement: Mean value for the y-axix
63 fBodyGyro.mean.Z = Frequency Domain Signals for body gyroscope measurement: Mean value for the z-axix
64 fBodyGyro.std.X = Frequency Domain Signals for body gyroscope measurement: Standard deviation for the x-axix
65 fBodyGyro.std.Y = Frequency Domain Signals for body gyroscope measurement: Standard deviation for the y-axix
66 fBodyGyro.std.Z = Frequency Domain Signals for body gyroscope measurement: Standard deviation for the z-axix
67 fBodyGyro.meanFreq.X = Frequency Domain Signals for body gyroscope measurement: Weighted average of the frequency components to obtain a mean frequency for the x-axix
68 fBodyGyro.meanFreq.Y = Frequency Domain Signals for body gyroscope measurement: Weighted average of the frequency components to obtain a mean frequency for the y-axix
69 fBodyGyro.meanFreq.Z = Frequency Domain Signals for body gyroscope measurement: Weighted average of the frequency components to obtain a mean frequency for the z-axix
70 fBodyAccMag.mean() = Frequency Domain Signals for body accelerometer magnitude: Mean value
71 fBodyAccMag.std() = Frequency Domain Signals for body accelerometer magnitude: Standard deviation
72 fBodyAccMag.meanFreq() = Frequency Domain Signals for body accelerometer magnitude: Weighted average of the frequency components to obtain a mean frequency
73 fBodyBodyAccJerkMag.mean() = Frequency Domain Signals for body accelerometer jerk magnitude: Mean value
74 fBodyBodyAccJerkMag.std() = Frequency Domain Signals for body accelerometer jerk magnitude: Standard deviation
75 fBodyBodyAccJerkMag.meanFreq() = Frequency Domain Signals for body accelerometer jerk magnitude: Weighted average of the frequency components to obtain a mean frequency
76 fBodyBodyGyroMag.mean() = Frequency Domain Signals for body gyroscope magnitude: Mean value
77 fBodyBodyGyroMag.std() = Frequency Domain Signals for body gyroscope magnitude: Standard deviation
78 fBodyBodyGyroMag.meanFreq() = Frequency Domain Signals for body gyroscope magnitude: Weighted average of the frequency components to obtain a mean frequency
79 fBodyBodyGyroJerkMag.mean() = Frequency Domain Signals for body gyroscope jerk magnitude: Mean value
80 fBodyBodyGyroJerkMag.std() = Frequency Domain Signals for body gyroscope jerk magnitude: Standard deviation
81 fBodyBodyGyroJerkMag.meanFreq() = Frequency Domain Signals for body gyroscope jerk magnitude: Weighted average of the frequency components to obtain a mean frequency
