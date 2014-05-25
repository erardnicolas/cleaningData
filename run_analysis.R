rm(list=ls())
library(data.table)
## Loads feature and activity data
features<-read.table("features.txt")
activity<-read.table("activity_labels.txt")

## Loads test data
subject_test<-read.table("test/subject_test.txt")
X_test<-read.table("test/X_test.txt",header=FALSE)
y_test<-read.table("test/y_test.txt")
t_test<-read.table("test/Inertial Signals/body_acc_x_test.txt")

## Loads training data
subject_train<-read.table("train/subject_train.txt")
X_train<-read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")

## Puts together all the data and adds proper column names
subject_all<-rbind(subject_test,subject_train)
X_all<-rbind(X_test,X_train)
y_all<-rbind(y_test,y_train)
colnames(X_all)<-features[,2]
colnames(y_all)<-"Activity"
colnames(subject_all)<-"Subject"
data<-cbind(subject_all,y_all,X_all)

## Extracts only the measurements on the mean and standard deviation for each measurement
data2<-data[,grep("Subject|Activity|mean\\(\\)|std\\(\\)",colnames(data))]

## Appropriately labels the data set with descriptive activity names
data2<-within(data2,Activity<-factor(Activity,1:6,activity[,2]))
head(data2)

##Transforms data2 in a data.table
data3<-data.table(data2)

## Calculates the average of each colum in data3 for each Subject and each Activity
dataClean<-data3[,lapply(.SD, mean),by=list(Subject,Activity)]

##Exports tidyDataSet
write.table(dataClean,file="tidyDataSet.txt",row.names=FALSE,quote=FALSE)

