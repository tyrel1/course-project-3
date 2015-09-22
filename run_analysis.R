 
##general data
features<-read.table("./UCI HAR Dataset/features.txt")

activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")



subject_test<-read.table("./UCI HAR Dataset/train/subject_train.txt")

##train data frame

subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
 
train_set<-read.table("./UCI HAR Dataset/train/X_train.txt", colClasses = "character")

activity_train<-read.table("./UCI HAR Dataset/train/y_train.txt", colClasses = "character")
 
names(train_set) = features$V2

train_set$activity=sapply(activity_train$V1,function(x)  activity_labels$V2[activity_labels$V1==x])

train_set$subject = subject_train$V1

##test data frame

subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")

test_set<-read.table(paste("./UCI HAR Dataset/test/X_test.txt",sep=""), colClasses = "character")

activity_test<-read.table("./UCI HAR Dataset/test/y_test.txt",sep="", colClasses = "character")

names(test_set) =  features$V2 

test_set$activity=sapply(activity_test$V1,function(x)  activity_labels$V2[activity_labels$V1==x])

test_set$subject = subject_test$V1

##merge
 

merged<-rbind(train_set,test_set)
 

means<-merged[ , grepl( "mean" , names( merged ) ) ]

stds<-merged[ , grepl( "std" , names( merged ) ) ]

act<-merged[ , grepl( "activity" , names( merged ) ) ]
 

subj<-merged[ , grepl( "subject" , names( merged ) ) ]

 

final<-data.frame(means,stds,act,subj)

final<-lapply(final,as.numeric)

#average
aggdata <-aggregate(final, by=list(final$act,final$subj), 
                    FUN=mean, na.rm=TRUE)

aggdata
 