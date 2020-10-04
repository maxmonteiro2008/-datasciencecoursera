#############################################################################
#Author:Maxwell
#Date:10/03/2020

#Intalling packages
install.packages("dplyr")
library(dplyr)
library(reshape2)

## Downloading the Original DataSet
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

target<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(target,destfile="./UCI_DataSet.zip",method="curl")


#checking directory structureand unzipping the data set
if(!file.exists("./data")){
  dir.create("./data")
  unzip(zipfile = "./UCI_DataSet.zip",exdir ="./data" )
}else{unzip(zipfile = "./UCI_DataSet.zip",exdir ="./data" )}

###### mapping the desired files####################
####################################################
path<-file.path("./data","UCI HAR Dataset")
#Support files
features_file<-file.path(path,"features.txt")
activities_file<-file.path(path,"activity_labels.txt")

#Train Dataset Files
train_path<-file.path(path,"train")
X_train_file<-file.path(train_path,"X_train.txt")
Y_train_file<-file.path(train_path,"Y_train.txt")
Subject_train_file<-file.path(train_path,"subject_train.txt")
#Test Dataset Files
test_path<-file.path(path,"test")
X_test_file<-file.path(test_path,"X_test.txt")
Y_test_file<-file.path(test_path,"Y_test.txt")
Subject_test_file<-file.path(test_path,"subject_test.txt")

###### Loading the data####################
####################################################
activitylabels<- read.table(activities_file,header = FALSE)
featureslabels<- read.table(features_file,header = FALSE)

train_X_dt<- read.table(X_train_file,header = FALSE)
train_Y_dt<- read.table(Y_train_file,header = FALSE)
train_Subject_dt<- read.table(Subject_train_file,header = FALSE)

test_X_dt<- read.table(X_test_file,header = FALSE)
test_Y_dt<- read.table(Y_test_file,header = FALSE)
test_Subject_dt<- read.table(Subject_test_file,header = FALSE)

###### Step1  Merging Train and Test Sets  ####################
####################################################
mergedX<-rbind(train_X_dt,test_X_dt)
mergedY<-rbind(train_Y_dt,test_Y_dt)
mergedSubject<-rbind(train_Subject_dt,test_Subject_dt)

###### Step2 Extracting mean and std variables  ####################
####################################################

names(mergedX)<-featureslabels$V2
keep_vars<-grep("Mean|mean|std|Std",names(mergedX))
mergedX<-mergedX[,keep_vars]


###### Step3  givin descriptive activity names to activities#############################
###################################################

mergedY$V1<-factor(mergedY$V1,activitylabels$V1,labels = activitylabels$V2)



###### Step4  give an Appropriately labels the data set with descriptive variable names ########
###################################################
names(mergedX)<-gsub("^t", "time", names(mergedX))
names(mergedX)<-gsub("^f", "frequency", names(mergedX))
names(mergedX)<-gsub("Acc", "Accelerometer", names(mergedX))
names(mergedX)<-gsub("Gyro", "Gyroscope", names(mergedX))
names(mergedX)<-gsub("Mag", "Magnitude", names(mergedX))
names(mergedX)<-gsub("BodyBody", "Body", names(mergedX))
names(mergedY)<-"Activity"
names(mergedSubject)<-"Subject"

#Including  a common variable forall the tables
mergedY<-mutate(mergedY, id= 1:nrow(mergedY))
mergedSubject<-mutate(mergedSubject, id= 1:nrow(mergedSubject))
mergedX<-mutate(mergedX, id= 1:nrow(mergedX))

# Exporting a table per kind of variable(tidy principle#3)
write.table(mergedX, "./data/mergedX.txt", row.names = FALSE, quote = FALSE)
write.table(mergedY, "./data/mergedY.txt", row.names = FALSE, quote = FALSE)
write.table(mergedSubject, "./data/mergedSubject.txt", row.names = FALSE, quote = FALSE)

###### Step5  creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#############################

DataSet2<-cbind(mergedY,mergedSubject,mergedX)

DataSet2 <- melt(DataSet2, id = c("Subject", "Activity"))
DataSet2<- dcast(DataSet2, Subject + Activity ~ variable, mean)

write.table(DataSet2, "./data/DataSet2.txt", row.names = FALSE, quote = FALSE)