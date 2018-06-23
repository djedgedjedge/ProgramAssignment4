#Purpose of the script is to tidy a set of data coming from accelerometer of Samsung Galaxy 5
#The script will :
#       Merges the training and the test sets to create one data set.
#       Extracts only the measurements on the mean and standard deviation for each measurement.
#       Uses descriptive activity names to name the activities in the data set
#       Appropriately labels the data set with descriptive variable names.
# Then it will compute the average of each variable for each activity and each subject into a new data set.


run_analysis <- function(){
        
        # Read the features in order to name correctly the variable of the final data set
        features <- read.table("./Dataset/features.txt", colClasses = "character")
        # Read the activity lables in order to lable correctly the activities in the final data set
        activity_lable <- read.table("./Dataset/activity_labels.txt", col.names = c("lable", "lable_desc"))
        
        
        # Read the data test and assign the features names to the data test variables
        # >> data test has now appropriate descriptive variables
        data_test <- read.table("./Dataset/test/X_test.txt", colClasses = "numeric", col.names = c(features[,2]))
        # read the lable test
        # Merge the lable test with the description of the activities  - use inner join to preserve the order
        # >> activities has descriptive lable
        lable_test <- read.table("./Dataset/test/Y_test.txt", colClasses = "integer", col.names = "lable") %>%
                inner_join(activity_lable, by = "lable")
        # add the activities in the data test
        data_test <- cbind(lable_test["lable_desc"], data_test)
        # Read Subject ID for the dataset test
        subject_test <- read.table("./Dataset/test/subject_test.txt", colClasses = "integer", col.names = "subject")
        # add the subject in the data test
        data_test <- cbind(subject_test, data_test)
        
        # Read the data and lable train and assign the features names to the data train variables
        # >> data train has now appropriate descriptive variables
        data_train <- read.table("./Dataset/train/X_train.txt", colClasses = "numeric", col.names = c(features[,2]))
        # Read the data and lable train
        # Merge the lable test with the description of the activities - use inner join to preserve the order
        # >> activities has descriptive lable
        lable_train <- read.table("./Dataset/train/Y_train.txt", colClasses = "integer", col.names = "lable") %>%
                inner_join(activity_lable, by = "lable")
        # add the activities in the data train
        data_train <- cbind(lable_train["lable_desc"], data_train)
        # Read Subject ID for the dataset train
        subject_train <- read.table("./Dataset/train/subject_train.txt", colClasses = "integer", col.names = "subject")
        # add the subject in the data train
        data_train <- cbind(subject_train, data_train)
        
        # Merge both data test and train into data set
        # and extract only the column containing the subject, the description of the activity, the mean and std (standard deviation)
        data <- rbind(data_test, data_train) %>%
                select(matches('subject|lable_desc|*mean*|*std*', data))
        
        # Perform mean calculation grouped by subject and lable desc
        data_avg <- data %>% group_by(subject, lable_desc) %>% summarize_all(funs(mean))
        # Create the second tidy data set
        write.table(data_avg,"./tidy_data_set.txt", row.names = FALSE, quote = FALSE)
}