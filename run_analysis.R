### File: run_analysis.R
## 
## You should create one R script called run_analysis.R that does the following.

## 1 Merges the training and the test sets to create one data set.
## 2 Extracts only the measurements on the mean and standard deviation for each measurement.
## 3 Uses descriptive activity names to name the activities in the data set
## 4 Appropriately labels the data set with descriptive variable names.
## 5 From the data set in step 4, creates a second, independent tidy data set 
##       with the average of each variable for each activity and each subject.

library(dplyr)


##### 1 merge training and test sets

## read in train and test sets
X_train <- read.table("data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("data/UCI HAR Dataset/train/y_train.txt")
X_test <- read.table("data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("data/UCI HAR Dataset/test/y_test.txt")


## add feature names to X datasets
feature_labels <- read.table("data/UCI HAR Dataset/features.txt")

## merge train and test together
X_total <- rbind(X_train, X_test)
y_total <- rbind(y_train, y_test)

#add column names from features
colnames(X_total) <- make.names(feature_labels[,2])
colnames(y_total) <- c("body_activity")

### 2 subset the columns to only be the mean or std
X_total_mean_std <- X_total[,grepl("mean|std", names(X_total)) ]


# read in the subjects
subject_test <- read.table("data/UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("data/UCI HAR Dataset/train/subject_train.txt")
subject_total <- rbind(subject_train, subject_test)
colnames(subject_total) <- c("subject")
subject_total$subject <- factor(subject_total$subject)

######## Number 3 - Make descriptive activity labels
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt")
y_total$body_activity <- factor(y_total$body_activity, labels = as.character(activities$V2))


###### Number 4
# merge X, Y, and subjects to one tidy dataset (first tidy set)
tidy1_data <- cbind(subject_total, y_total, X_total_mean_std)



########### Number 5
## 5 From the data set in step 4, creates a second, independent tidy data set 
##       with the average of each variable for each activity and each subject.

tidy2_summary <- aggregate(.~subject+body_activity, tidy1_data, mean)
tidy2_summary <- arrange(tidy2_summary, subject, body_activity, by_group = TRUE)