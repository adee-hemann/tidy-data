library(dplyr)
##read measurement data sets (marked with X), activity data sets (marked with Y), and subject data sets
## create unified data using row bind

## measurement data sets
measurement_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
measurement_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
measurement <- rbind(measurement_test, measurement_train)
rm(list = c("measurement_test", "measurement_train"))

##activity data sets
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
activity <- rbind(activity_test, activity_train)
rm(list = c("activity_test", "activity_train"))

##subject data sets
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject <- rbind(subject_test, subject_train)
rm(list = c("subject_test", "subject_train"))

## read features data set
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactor = FALSE)

##select variables that contain mean and standard deviation
select_features <- filter(features, grepl("mean\\(", V2) | grepl("std\\(", V2))

##cleanup names by changing to all lower case and removing punctuation

select_features$V2 <- tolower(select_features$V2)
select_features$V2 <- gsub("-", "", select_features$V2)
select_features$V2 <- gsub("\\(", "", select_features$V2)
select_features$V2 <- gsub("\\)", "", select_features$V2)

##descriptive names

select_features$V2 <- gsub("std", "standarddeviation", select_features$V2) 
select_features$V2 <- gsub("tbody", "timebody", select_features$V2)
select_features$V2 <- gsub("tgravity", "timegravity", select_features$V2) 
select_features$V2 <- gsub("acc", "acceleration", select_features$V2) 
select_features$V2 <- gsub("fbody", "frequencybody", select_features$V2) 
select_features$V2 <- gsub("mag", "magnitude", select_features$V2) 

## select measurement data based on selected_features index

select_measurement <- select(measurement, select_features$V1)

## set variable names using select_features data

colnames(select_measurement) <- select_features$V2

## label activity and subject data
colnames(activity) <- "activity"
colnames(subject) <- "subject"

##combine subject, activity and selected measurement data

data <- cbind(subject, activity, select_measurement)

rm(list = c("activity","features", "select_features", "subject", "select_measurement", "measurement"))

##descriptive activity data names

data$activity[data$activity == 1] <- "walking"
data$activity[data$activity == 2] <- "walking upstairs"
data$activity[data$activity == 3] <- "walking downstairs"
data$activity[data$activity == 4] <- "sitting"
data$activity[data$activity == 5] <- "standing"
data$activity[data$activity == 6] <- "laying"

##create tidy data set

tidy_data <- data %>%
        group_by(subject, activity) %>%
        summarize_all(funs(mean))

##save tidy data text file 

write.table(tidy_data, file = "tidydata.txt", row.names = FALSE)


