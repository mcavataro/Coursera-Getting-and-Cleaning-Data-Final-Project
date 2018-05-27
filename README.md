# Coursera-Getting-and-Cleaning-Data-Final-Project
Final project for the Coursera Getting and Cleaning Data course.

########################################################################################################################
This project uses original datasets from the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
########################################################################################################################

The links to the study website and original data are included inthe codebook.md file included in this repository.

Data is processed from the original dataset into a final tidy dataset using the run_analysis.R script included in this repository. 

A description of the steps taken in the script to process the data is included in the codebook.md file and at the end of this README file.

A description of the dataset variables is included in the codebook.md file. 

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
     


