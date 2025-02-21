# course-project-3

 
## How the script works

* run_analysis.R read the data ubicated in the direcetory UCI HAR Dataset. It reads first files features.txt, activity_labels.txt and subject_train.txt that are the commun files used by both data sets, train and test.

* Reads the train dataset and replace the activity values for his activity name. Also replace the column names for the names ubicated in features file. Also add the column subject readed from the subject_train.txt file.

* Reads do the same with the test data set with its files.

* With the function rbind, merge the two data frames (train and test).

* Using the function grepl, extract the columns whose name contains the word mean or std and also extracts the columns that contain the activity and subject.

* To calculate the average, use the function aggregate that groups by the activity and subject columns usind the function mean.

* Return the data obtained by the function aggregate

## Code Book

* Variables that indicate the agrupation 

[1] "Group.1" : "Group.2"

* Variables related with the mean 

[3] "tBodyAcc.mean...X" "tBodyAcc.mean...Y"
[5] "tBodyAcc.mean...Z" "tGravityAcc.mean...X"
[7] "tGravityAcc.mean...Y" "tGravityAcc.mean...Z"
[9] "tBodyAccJerk.mean...X" "tBodyAccJerk.mean...Y"
[11] "tBodyAccJerk.mean...Z" "tBodyGyro.mean...X"
[13] "tBodyGyro.mean...Y" "tBodyGyro.mean...Z"
[15] "tBodyGyroJerk.mean...X" "tBodyGyroJerk.mean...Y"
[17] "tBodyGyroJerk.mean...Z" "tBodyAccMag.mean.."
[19] "tGravityAccMag.mean.." "tBodyAccJerkMag.mean.."
[21] "tBodyGyroMag.mean.." "tBodyGyroJerkMag.mean.."
[23] "fBodyAcc.mean...X" "fBodyAcc.mean...Y"
[25] "fBodyAcc.mean...Z" "fBodyAcc.meanFreq...X"
[27] "fBodyAcc.meanFreq...Y" "fBodyAcc.meanFreq...Z"
[29] "fBodyAccJerk.mean...X" "fBodyAccJerk.mean...Y"
[31] "fBodyAccJerk.mean...Z" "fBodyAccJerk.meanFreq...X"
[33] "fBodyAccJerk.meanFreq...Y" "fBodyAccJerk.meanFreq...Z"
[35] "fBodyGyro.mean...X" "fBodyGyro.mean...Y"
[37] "fBodyGyro.mean...Z" "fBodyGyro.meanFreq...X"
[39] "fBodyGyro.meanFreq...Y" "fBodyGyro.meanFreq...Z"
[41] "fBodyAccMag.mean.." "fBodyAccMag.meanFreq.."
[43] "fBodyBodyAccJerkMag.mean.." "fBodyBodyAccJerkMag.meanFreq.." [45] "fBodyBodyGyroMag.mean.." "fBodyBodyGyroMag.meanFreq.."
[47] "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.meanFreq.."

* Variables related with the standart desviation 

[49] "tBodyAcc.std...X" "tBodyAcc.std...Y"
[51] "tBodyAcc.std...Z" "tGravityAcc.std...X"
[53] "tGravityAcc.std...Y" "tGravityAcc.std...Z"
[55] "tBodyAccJerk.std...X" "tBodyAccJerk.std...Y"
[57] "tBodyAccJerk.std...Z" "tBodyGyro.std...X"
[59] "tBodyGyro.std...Y" "tBodyGyro.std...Z"
[61] "tBodyGyroJerk.std...X" "tBodyGyroJerk.std...Y"
[63] "tBodyGyroJerk.std...Z" "tBodyAccMag.std.."
[65] "tGravityAccMag.std.." "tBodyAccJerkMag.std.."
[67] "tBodyGyroMag.std.." "tBodyGyroJerkMag.std.."
[69] "fBodyAcc.std...X" "fBodyAcc.std...Y"
[71] "fBodyAcc.std...Z" "fBodyAccJerk.std...X"
[73] "fBodyAccJerk.std...Y" "fBodyAccJerk.std...Z"
[75] "fBodyGyro.std...X" "fBodyGyro.std...Y"
[77] "fBodyGyro.std...Z" "fBodyAccMag.std.."
[79] "fBodyBodyAccJerkMag.std.." "fBodyBodyGyroMag.std.."
[81] "fBodyBodyGyroJerkMag.std.."

* Variable that indicate the activity 
   
   "act"

* Variable that indicate the subject 
 
  "subj"
