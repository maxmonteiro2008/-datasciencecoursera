<h1> The run_analysis Script</h1>


After you sorce the script, the follow steps will take place:

<h2>1 Original DataSet download and the libraries setup </h2>

install.packages("dplyr")

library(dplyr)

target<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(target,destfile="./UCI_DataSet.zip",method="curl")

<h2>2 The Original DataSet unzip at the right directory</h2>

if(!file.exists("./data")){
  dir.create("./data")
  unzip(zipfile = "./UCI_DataSet.zip",exdir ="./data" )
}else{unzip(zipfile = "./UCI_DataSet.zip",exdir ="./data" )}


<h2>3 Desired files path_name Mapping </h2>

Here, each file of interest is mapped to a file variable 


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


<h2>4 Desired files Loading as tables </h2>

Now that we have the right files mapped out , we're going to load the data into tables.

#support tables
activitylabels<- read.table(activities_file,header = FALSE)
featureslabels<- read.table(features_file,header = FALSE)

#train dataset
train_X_dt<- read.table(X_train_file,header = FALSE)
train_Y_dt<- read.table(Y_train_file,header = FALSE)
train_Subject_dt<- read.table(Subject_train_file,header = FALSE)

#testdataset
test_X_dt<- read.table(X_test_file,header = FALSE)
test_Y_dt<- read.table(Y_test_file,header = FALSE)
test_Subject_dt<- read.table(Subject_test_file,header = FALSE)

<h2>5 Execution of Requirements' STEP1- Merging Train and Test </h2>
Here, the related  kinds of variables were  merged by row, matching columns. I used rbind() to do this.

mergedX<-rbind(train_X_dt,test_X_dt)

mergedY<-rbind(train_Y_dt,test_Y_dt)

mergedSubject<-rbind(train_Subject_dt,test_Subject_dt)


<h2>6 Execution of Requirements1' STEP2- Extracting only mean and std variables </h2>
This step cleans all X variables that aren't mean or std.

names(mergedX)<-featureslabels$V2

keep_vars<-grep("Mean|mean|std|Std",names(mergedX))

mergedX<-mergedX[,keep_vars]

<h2>7 Execution of Requirements STEP3- giving descriptive activity names to activities </h2>
This task substitutes  activities number for activities names  in merged Ytables.

mergedY$V1<-factor(mergedY$V1,activitylabels$V1,labels = activitylabels$V2)


<h2>7 Execution of Requirements' STEP4- giving an Appropriately labels the data set with descriptive variable names </h2>
Here  the script change variable names and export the Dataset1

# chaging variable names
names(mergedX)<-gsub("^t", "time", names(mergedX))
names(mergedX)<-gsub("^f", "frequency", names(mergedX))
names(mergedX)<-gsub("Acc", "Accelerometer", names(mergedX))
names(mergedX)<-gsub("Gyro", "Gyroscope", names(mergedX))
names(mergedX)<-gsub("Mag", "Magnitude", names(mergedX))
names(mergedX)<-gsub("BodyBody", "Body", names(mergedX))
names(mergedY)<-"Activity"
names(mergedSubject)<-"Subject"

# writting the Tidy  merged  dataset1

#Merging all variables into One Tidy Dataset 

DataSet1<-cbind(mergedY,mergedSubject,mergedX)

# Exporting the Dataset
write.table(DataSet1, "./data/Dataset1.txt", row.names = FALSE, quote = FALSE)

<h2>8 Execution of Requirements' STEP5- creates a second, independent tidy data set with the average of each variable for each activity and each subject </h2>

Here  the script will group DataSet1 by activity+subject, then summarize each X variable with the average function(FUN=mean) and export the tables of Dataset2


DataSet2<-DataSet1 %>%
  group_by(Activity, Subject) %>%
  summarise_each(funs(mean))

write.table(DataSet2, "./data/DataSet2.txt", row.names = FALSE, quote = FALSE)
