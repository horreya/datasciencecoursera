#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the 
#average of each variable for each activity and each subject.as a txt file created with 
#write.table() using row.name=FALSE

#tidy dataset
#Github repo w/ required scripts
#Codebook
#Readme

#load the necessary libraries
library(dplyr)

#unzip dataset and read in relevant files
unzip ("./getdata_projectfiles_UCI HAR Dataset.zip",unzip="unzip")
features<-read.table("./UCI HAR Dataset/features.txt")
activities<-read.table("./UCI HAR Dataset/activity_labels.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
x_test<-read.table("./UCI HAR Dataset/test/x_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
x_train<-read.table("./UCI HAR Dataset/train/x_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

#attach subject and activity columns to each of the test and training datasets
test_dataset<-cbind(subject_test,y_test,x_test)
training_dataset<-cbind(subject_train,y_train,x_train)

#merge test and training datasets
merged_dataset<-rbind(test_dataset,training_dataset)

#attach column labels
colnames(merged_dataset)<-c("Subject","Activity",as.character(features[,2]))

#subset only the measurements of mean and stdddev
dedupe<-merged_dataset[ ,!duplicated(colnames(merged_dataset))]
trimmed_dataset<-select(dedupe,matches("Subject|Activity|-mean()|-std()"),-matches("meanFreq"))

#use descriptive activity names for each activity
trimmed_dataset$Activity<-activities$V2[trimmed_dataset$Activity]

#use syntactically valid, descriptive names for each variable
var_names<-make.names(names(trimmed_dataset))
var_names<-sub("BodyBody","Body",var_names)
var_names<-sub("\\.\\.","",var_names)
var_names<-sub("Acc","Accelerometer",var_names)
var_names<-sub("Gyro","Gyroscope",var_names)
var_names<-sub("Mag","Magnitude",var_names)
colnames(trimmed_dataset)<-var_names

#averages for each subject and each variable
summary_dataset<-trimmed_dataset %>%  group_by(Subject,Activity) %>% summarise_each(funs(mean))

#write to a file
write.table(summary_dataset,file="SummaryData.txt",row.names=FALSE)