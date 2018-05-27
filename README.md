# Coursera-Getting-and-Cleaning-Data-Final-Project
Final project for the Coursera Getting and Cleaning Data course.

#####################################################################

This project uses original datasets from the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
######################################################################

The links to the study website and original data are included in the codebook.md file included in this repository and also below:

Study website:	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  

Original data:	https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

######################################################################

Data is processed from the original dataset into a final tidy dataset using the run_analysis.R script included in this repository. 

A description of the steps taken in the script to process the data is included in the codebook.md file and at the end of this README file.

A description of each dataset variable is included in the codebook.md file. 

This submission successfully meets the requirements of the project because it meets the objectives and review criteria below:

Objectives:

1. It merges the training and test sets into one dataset
2. It extracts only the measuremetns on the mean and standard veiations for each measurement
3. It uses descriptive activity names to name the activities inthe dataset
4. It appropriately labels the dataset with descriptive variable names
5. From the dataset in step 4, it creates a new, independent tidy data set with the average of each activity and each subject

Review Criteria:

1. The submitted data is tidy because:
     i. Each variable measured is in one column and each column only contains one variable measured
     ii. Each different observation is in a different row
     iii. There is one 'kind' of measured variable in the table - means
     iv. The data includes a row at the top with variable names
     v. The variable names are human readable and clearly correspond to the the feature measurement categories of the original dataset
     vii. The data is in one file per table, not multiple worksheets in one workbook
2.This github repo contains the required script, run_analysis.R
3.The codebook includes step-by-step instructions of how the original dataset was modified, an indication of all the variables and their units (normalized between -1 to 1), description and datatype (all feature measurements are numerical)
4.This README explains the analysis in a clear and understandable way  

:) 

############# Steps taken to process the data ###############################

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



     


