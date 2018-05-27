Coursera Getting & Cleaning Data – Final Project Codebook
Dataset: 	final_project_tidy_output.txt
The data for this project comes from the following study whose full description is available at the site where the data was obtained:
Study:	Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

Study website:	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  
Original data:	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Explanation of data maniplations (study design):
1.	Read into R the following text files from the UCI HAR Datasets
a.	features.txt
b.	activity_labels.txt
c.	subject_train.txt
d.	X_train.txt
e.	y_train.txt
f.	subject_test.txt
g.	X_test.txt
h.	y_test.txt
2.	Specify where to save the final txt output from the data manipulation process
3.	Get rid of the unreadable characters in the features.txt vector so we can later use this for the variable names of the final dataset.  The unreadable characters are the following: -   ,   (   )
4.	Tidy the x_test dataset by doing the following, resulting in a tidy dataset called test_set 
a.	Rename the columns using the feature names which have had the unreadable character removed or replace
b.	Append the subject_test vector and the y_test vectors to the left side of the x_test data set
c.	Rename these columns “subject” and “activity”, respectively, so that now all columns have human readable variable names that specify either the subject, activity, or feature from the original study dataset they contain
d.	Apply the descriptive name of the activity in each observation by matching the number in the “activity” column to the corresponding string value from activity_labels.txt
5.	Repeat this process to tidy the x_trrain dataset, resulting in a tidy dataset called train_set
6.	Append the train_set dataset to the bottom of the test_set dataset in a new dataset called all_set
7.	On the all_set dataset filter on only those columns containing mean or standard deviation measurements, creating a new dataset called short_set
8.	Melt the short_set into a new dataset, means, where columns “subject” and “activity” are the id columns and all other columns are the measurement colums.
9.	Use dcast to convert the dataset into one measuring the average of each activity and each subject for each feature measurement, name the dataset “means”
10.	Sort the “means” dataset by activity and subject
11.	Write the means dataset to the file path specified in step 2
12.	The resulting dataset is tidy because:	
a.	Each variable measured is in one column
b.	Each different observation is in a different row
c.	The table contains only one “kind” of data: the means of feature measurements
d.	The data includes a row at the top with variable names
e.	The variable names are human readable and clearly correspond to one of the feature measurements of the original dataset
f.	The data is in one file per table, not multiple worksheets in one workbook

Data definitions by column:
1.	subject
	integer
	Identifier of one of the thirty volunteers participating in the study.  Volunteers are within an age bracket of 19-48 years. 
2.	Activity
	Factor
	One of six activity labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
The following variables are numerical and bounded with [-1, 1] and represent the mean of the normalized measurements of each feature for each subject and activity. (i.e. the mean of the means and the mean of the standard deviations).
3.	tBodyAcc_mean_X
	Mean of body acceleration signal in the X direction
4.	tBodyAcc_mean_Y
	Mean of body acceleration signal in the Y direction
5.	tBodyAcc_mean_Z
	Mean of body acceleration signal in the Z direction
6.	tGravityAcc_mean_X
	Mean of gravity acceleration signal in the X direction
7.	tGravityAcc_mean_Y
	Mean of gravity acceleration signal in the Y direction
8.	tGravityAcc_mean_Z
	Mean of gravity acceleration signal in the Z direction
9.	tBodyAccJerk_mean_X
	Mean of Jerk signal derived from body linear acceleration in X direction
10.	tBodyAccJerk_mean_Y
	Mean of Jerk signal derived from body linear acceleration in Y direction
11.	tBodyAccJerk_mean_Z
	Mean of Jerk signal derived from body linear acceleration in Z direction
12.	tBodyGyro_mean_X
	Mean of body gyroscope reading in X direction
13.	tBodyGyro_mean_Y
	Mean of body gyroscope reading in Y direction
14.	tBodyGyro_mean_Z
	Mean of body gyroscope reading in the Z direction
15.	tBodyGyroJerk_mean_X
	Mean of Jerk signal derived from body angular velocity in X direction
16.	tBodyGyroJerk_mean_Y
	Mean of Jerk signal derived from body angular velocity in Y direction
17.	tBodyGyroJerk_mean_Z
	Mean of Jerk signal derived from body angular velocity in Z direction
18.	tBodyAccMag_mean
	Mean of magnitude of body acceleration signal
19.	tGravityAccMag_mean
	Mean of magnitude of gravity acceleration signal
20.	tBodyAccJerkMag_mean
	Mean of magnitude of body acceleration Jerk
21.	tBodyGyroMag_mean
	Mean of magnitude of body gyroscope signal 
22.	tBodyGyroJerkMag_mean
	Mean of magnitude of body gyroscope Jerk
23.	fBodyAcc_mean_X
	Mean of Fast Fourier Transformation on body acceleration in X direction
24.	fBodyAcc_mean_Y
	Mean of Fast Fourier Transformation on body acceleration in Y direction
25.	fBodyAcc_mean_Z
	Mean of Fast Fourier Transformation on body acceleration in Z direction
26.	fBodyAcc_meanFreq_X
	Mean of Fast Fourier Transformation on body acceleration in X direction Frequency
27.	fBodyAcc_meanFreq_Y
	Mean of Fast Fourier Transformation on body acceleration in Y direction Frequency
28.	fBodyAcc_meanFreq_Z
	Mean of Fast Fourier Transformation on body acceleration in Z direction Frequency
29.	fBodyAccJerk_mean_X
	Mean of Fast Fourier Transformation of body acceleration Jerk in X direction 
30.	fBodyAccJerk_mean_Y
	Mean of Fast Fourier Transformation of body acceleration Jerk in Y direction 
31.	fBodyAccJerk_mean_Z
	Mean of Fast Fourier Transformation of body acceleration Jerk in Y direction 
32.	fBodyAccJerk_meanFreq_X
	Mean of Fast Fourier Transformation of body acceleration Jerk in X direction Frequency
33.	fBodyAccJerk_meanFreq_Y
	Mean of Fast Fourier Transformation of body acceleration Jerk in Y direction Frequency
34.	fBodyAccJerk_meanFreq_Z
	Mean of Fast Fourier Transformation of body acceleration Jerk in Y direction Frequency
35.	fBodyGyro_mean_X
	Mean of Fast Fourier Transformation of body gyroscope signal in X direction
36.	fBodyGyro_mean_Y
	Mean of Fast Fourier Transformation of body gyroscope signal in Y direction
37.	fBodyGyro_mean_Z
	Mean of Fast Fourier Transformation of body gyroscope signal in Z direction
38.	fBodyGyro_meanFreq_X
	Mean of Fast Fourier Transformation of body gyroscope signal in X direction Frequency
39.	fBodyGyro_meanFreq_Y
	Mean of Fast Fourier Transformation of body gyroscope signal in Y direction Frequency
40.	fBodyGyro_meanFreq_Z
	Mean of Fast Fourier Transformation of body gyroscope signal in Z direction Frequency
41.	fBodyAccMag_mean
	Mean of Fast Fourier Transformation of body accelerometer signal magnitude
42.	fBodyAccMag_meanFreq
	Mean of Fast Fourier Transformation of body accelerometer signal magnitude frequency
43.	fBodyBodyAccJerkMag_mean
	Mean of Fast Fourier Transformation of body acceleration Jerk Magnitude
44.	fBodyBodyAccJerkMag_meanFreq
	Mean of Fast Fourier Transformation of body acceleration Jerk Magnitude frequency
45.	fBodyBodyGyroMag_mean
	Mean of Fast Fourier Transformation of body gyroscope signal magnitude
46.	fBodyBodyGyroMag_meanFreq
	Mean of Fast Fourier Transformation of body gyroscope signal magnitude frequency
47.	fBodyBodyGyroJerkMag_mean
	Mean of Fast Fourier Transformation of body gyroscope Jerk magnitde
48.	fBodyBodyGyroJerkMag_meanFreq
	Mean of Fast Fourier Transformation of body gyroscope Jerk magnitude frequency
49.	tBodyAcc_std_X
	Standard deviation of body acceleration signal in the X direction
50.	tBodyAcc_std_Y
	Standard deviation of body acceleration signal in the Y direction
51.	tBodyAcc_std_Z
	Standard deviation of body acceleration signal in the Z direction
52.	tGravityAcc_std_X
	Standard deviation of gravity acceleration signal in the X direction
53.	tGravityAcc_std_Y
	Standard deviation of gravity acceleration signal in the Y direction
54.	tGravityAcc_std_Z
	Standard deviation of gravity acceleration signal in the Z direction
55.	tBodyAccJerk_std_X
	Standard deviation of Jerk signal derived from body linear acceleration in X direction
56.	tBodyAccJerk_std_Y
	Standard deviation of Jerk signal derived from body linear acceleration in Y direction
57.	tBodyAccJerk_std_Z
	Standard deviation of Jerk signal derived from body linear acceleration in Z direction
58.	tBodyGyro_std_X
	Standard deviation of body gyroscope reading in X direction
59.	tBodyGyro_std_Y
	Standard deviation of body gyroscope reading in Y direction
60.	tBodyGyro_std_Z
	Standard deviation of body gyroscope reading in the Z direction
61.	tBodyGyroJerk_std_X
	Standard deviation of Jerk signal derived from body angular velocity in X direction
62.	tBodyGyroJerk_std_Y
	Standard deviation of Jerk signal derived from body angular velocity in Y direction
63.	tBodyGyroJerk_std_Z
	Standard deviation of Jerk signal derived from body angular velocity in Z direction
64.	tBodyAccMag_std
	Standard deviation of magnitude of body acceleration signal
65.	tGravityAccMag_std
	Standard deviation of magnitude of gravity acceleration signal
66.	tBodyAccJerkMag_std
	Standard deviation of magnitude of body acceleration Jerk
67.	tBodyGyroMag_std
	Standard deviation of magnitude of body gyroscope signal 
68.	tBodyGyroJerkMag_std
	Standard deviation of magnitude of body gyroscope Jerk
69.	fBodyAcc_std_X
	Standard deviation of Fast Fourier Transformation on body acceleration in X direction
70.	fBodyAcc_std_Y
	Standard deviation of Fast Fourier Transformation on body acceleration in Y direction
71.	fBodyAcc_std_Z
	Standard deviation of Fast Fourier Transformation on body acceleration in Z direction
72.	fBodyAccJerk_std_X
	Standard deviation of Fast Fourier Transformation of body acceleration Jerk in X direction 
73.	fBodyAccJerk_std_Y
	Standard deviation of Fast Fourier Transformation of body acceleration Jerk in Y direction 
74.	fBodyAccJerk_std_Z
	Standard deviation of Fast Fourier Transformation of body acceleration Jerk in Z direction 
75.	fBodyGyro_std_X
	Standard deviation of Fast Fourier Transformation of body gyroscope signal in X direction
76.	fBodyGyro_std_Y
	Standard deviation of Fast Fourier Transformation of body gyroscope signal in Y direction 
77.	fBodyGyro_std_Z
	Standard deviation of Fast Fourier Transformation of body gyroscope signal in Y direction 
78.	fBodyAccMag_std
	Standard deviation of Fast Fourier Transformation of body accelerometer signal magnitude
79.	fBodyBodyAccJerkMag_std
	Standard deviation of Fast Fourier Transformation of body acceleration Jerk Magnitude
80.	fBodyBodyGyroMag_std
	Standard deviation of Fast Fourier Transformation of body gyroscope signal magnitude
81.	fBodyBodyGyroJerkMag_std
	Standard deviation of Fast Fourier Transformation of body gyroscope Jerk magnitude
  
