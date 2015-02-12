
dir_train = "C:/Raphael/estudos/datasciencecoursera/Clearing Data/UCI HAR Dataset/train"
dir_test = "C:/Raphael/estudos/datasciencecoursera/Clearing Data/UCI HAR Dataset/test"
dir_feature = "C:/Raphael/estudos/datasciencecoursera/Clearing Data/UCI HAR Dataset"

#1 Merges the training and the test sets to create one data set

feature_list <- read.table(paste(dir_feature, "/", "features.txt", sep=""), col.names = c("id", "name"))
features <- c(as.vector(feature_list[, "name"]), "subject", "activity")

x_train <- read.table(paste(dir_train, "/", "X_train.txt", sep=""), nrows=7352, sep="", header=FALSE)
subject_train <- read.table(paste(dir_train, "/", "subject_train.txt", sep=""), col.names=c("subject"))
y_train <- read.table(paste(dir_train, "/", "y_train.txt", sep="") , col.names=c("activity"))
data_train <- cbind(x_train, subject_train, y_train)


x_test <- read.table(paste(dir_test, "/", "X_test.txt", sep=""), nrows=2947, comment.char="")
subject_test <- read.table(paste(dir_test, "/", "subject_test.txt", sep=""), col.names=c("subject"))
y_test <- read.table(paste(dir_test, "/", "y_test.txt", sep=""), col.names=c("activity"))
data_test <- cbind(x_test, subject_test, y_test)


data_set <- rbind(data_train, data_test)


#2 Extracts only the measurements on the mean and standard deviation for each measurement
# include column names at data_ser using features.txt
# search for columns wich names contains "mean" and "std"
# the values are in the "filtered_data_set"

feature_list <- read.table(paste(dir_feature, "/", "features.txt", sep=""), col.names = c("id", "name"))
feature_v <- c(as.vector(feature_list[, "name"]), "subject", "activity")

for (i in 1:561){
        name_col = feature_v[i]
        names(data_set)[i]<-name_col
}


filter_col_mean = data_set[ , grepl( "mean" , names( data_set ) ) ]
filter_col_std = data_set[ , grepl( "std" , names( data_set ) ) ]
filter_col_subject = data_set[ , grepl( "subject" , names( data_set ) ) ]
filter_col_activity = data_set[ , grepl( "activity" , names( data_set ) ) ]

filtered_data_set = cbind(filter_col_mean, filter_col_std, filter_col_subject, filter_col_activity)


#3 Uses descriptive activity names to name the activities in the data set
# "name" is the column that contains the names for data_set --> use m$name

activities <- read.table(paste(dir_feature, "/", "activity_labels.txt", sep=""), col.names=c("id", "name"))

m <- merge(filtered_data_set, activities, by.x = "filter_col_activity", by.y = "id")


#4 Appropriately labels the data set with descriptive variable names
# more apropriate names are stores in v_names


names(m) <- gsub("^t", "Time", names(m))
names(m) <- gsub("^f", "Frequency", names(m))
names(m) <- gsub("mean()", "Mean", names(m))
names(m) <- gsub("std()", "Standard Deviation", names(m))
names(m) <- gsub("-", "", names(m))
names(m) <- gsub("name", "Activity Name", names(m))

v_names = names(m)

#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
# averages are stored into "av" variable

av= data.frame(lapply(m, mean))