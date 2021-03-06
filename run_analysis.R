#Load the reshape2 package

  library(reshape2)
  
#Download the original dataset to your working directory
  url.zip <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url.zip,"UCI HAR Dataset.zip") 
  unzip(zipfile = "./UCI HAR Dataset.zip")  #unzip it
  
  #Specify the file paths you'll need to read the data from and to write the final output to
  path.features <- "./UCI HAR Dataset/features.txt"
  path.activity_labels <- "./UCI HAR Dataset/activity_labels.txt"
  
  path.subject_train <- "./UCI HAR Dataset/train/subject_train.txt"
  path.x_train <- "./UCI HAR Dataset/train/X_train.txt"
  path.y_train <- "./UCI HAR Dataset/train/y_train.txt"
  
  path.subject_test <- "./UCI HAR Dataset/test/subject_test.txt"
  path.x_test <- "./UCI HAR Dataset/test/X_test.txt"
  path.y_test <- "./UCI HAR Dataset/test/y_test.txt"
  
  path.write <- "./final_project_tidy_output.txt"
  
  #Read in the data files
  features <- read.table(path.features,header = FALSE)
  activity_labels <- read.table(path.activity_labels,header = FALSE)
  
  subject_train <- read.table(path.subject_train,header = FALSE)
  x_train <- read.table(path.x_train,header = FALSE)
  y_train <- read.table(path.y_train,header = FALSE)
  
  subject_test <- read.table(path.subject_test,header = FALSE)
  x_test <- read.table(path.x_test,header = FALSE)
  y_test <- read.table(path.y_test,header = FALSE)
  
# Get rid of unreadable characters in the features V2 vector
  features_txt <- gsub(",","_",gsub("-","_",gsub("\\(|\\)","",features$V2)))

#Prep test data set

  #rename the columns in x_test to feature names
  names(x_test) <- features_txt
  #append subject and activity numbers to the lefthand side of the x_train data set
  test_set <- cbind(y_test,x_test)
  test_set <- cbind(subject_test,test_set)
  names(test_set)[1:2] <- c("subject","activity") #rename the columns of the subject and activity numbers to human readable names
  #replace activity numbers with human readable activity labels
  test_set$activity <- activity_labels[test_set$activity,"V2"]  
  
#Prep train data set
  
  #rename columns in x_train
  names(x_train) <- features_txt  
  #append subject and activity numbers to the lefthand side of the x_train data set
  train_set <- cbind(y_train,x_train)
  train_set <- cbind(subject_train,train_set)  
  names(train_set)[1:2] <- c("subject","activity")  #rename the columns of the subject and activity numbers to human readable names
  #replace activity numbers with human readable activity labels
  train_set$activity <- activity_labels[train_set$activity,"V2"]  
  
#combine the two prepped data sets
  
  all_set <- rbind(test_set,train_set)  
  
#filter on columns for mean and standard deviation, creating shortened dataset

  cols <- c(1,2,grep("mean",names(all_set)),grep("std",names(all_set)))
  short_set <- all_set[,cols]

#Melt and then dcast into tidy data set with the average of each activity and each subject
  
  means <- melt(short_set,id=c("subject","activity"),measure.vars = 3:length(names(short_set)))
  means <- dcast(means,subject + activity ~ variable,mean)
  means <- arrange(means,activity,subject)

#write output to txt file
  
  write.table(means,path.write,row.names = FALSE)
  
