#### Getting and Cleaning Data - Course Project

# Read source data into R and load useful packages
library(dplyr)
library(tidyr)
library(lubridate)
library(reshape2)
test_val <- read.table("X_test.txt", header = FALSE)
test_activity_codes <- read.table("y_test.txt", header = FALSE)
train_val <- read.table("X_train.txt", header = FALSE)
train_activity_codes <- read.table("y_train.txt", header = FALSE)
variable_names <- read.table("features.txt", header = FALSE)
activity_labels <- read.table("activity_labels.txt", header = FALSE)
subject_test <- read.table("subject_test.txt", header = FALSE)
subject_train <- read.table("subject_train.txt", header = FALSE)

# Consolidate source data into properly labeled test and train data frames

## a. create vectors for variable names, activity codes, and subject codes
variable_name_vector <- variable_names[,2] # one for variable names (both data frames)
test_activity_code_vector <- test_activity_codes[,1] 
train_activity_code_vector <- train_activity_codes[,1]
test_subject_code_vector <- subject_test[,1]
train_subject_code_vector <- subject_train[,1]


## b. combine values and variable names into train and test data frames
test_dat <- test_val
train_dat <- train_val
names(test_dat) <- variable_name_vector # *Note: gives descriptive variable names to the test dataset (Step 4 of assignment)*
names(train_dat) <- variable_name_vector # *Note: gives descriptive variable names to the train dataset (Step 4 of assignment)*

## c. add activity codes to train and test data frames
test_dat$activityCode <- test_activity_code_vector
train_dat$activityCode <- train_activity_code_vector

## d. add subject variables to test and train dfs
test_dat$subject <- test_subject_code_vector
train_dat$subject <- train_subject_code_vector


# Identify the source of training and testing data, then combine them into a single dataset
train_dat$source <- "train" # Note: not requested by assignment, but helpful to keep track of data origin
test_dat$source <- "test"

combined_dat <- rbind(test_dat, train_dat) # *NOTE: combines training and test data (Step 1 of assignment) 


# Name vectors of activity_labels and add labels to combined dataset
names(activity_labels) <- c("activityCode", "activityLabel")
combined_dat <- merge(combined_dat, activity_labels, by.x = "activityCode", by.y = "activityCode") # *NOTE: gives descriptive activity names (Step 3 of assignment)*

# Extract mean and standard deviation for each measurement, and keep subject, activity code, and activity label
## column vector to subset measures of mean and standard deviation
my_columns <- grep("mean()|std()|activity|subject|source", names(combined_dat))
combined_dat2 <- combined_dat[,my_columns] # *NOTE: keeps columns containing measures of "mean" or "std" and activity and subject variables (Step 2 of assignment)*
tidy_dat <- combined_dat2[,-(grep("meanFreq", names(combined_dat2)))] # removes the "meanFreq" measures (which are different from mean)


# Write tidy data set to csv
write.csv(tidy_dat, "tidy_data.csv")


# Melt dataset - take tidy dataset from above and create dataset that shows the average value for each variable, activity, and subject
id_vars <- names(tidy_dat)[c(1, 68, 69, 70)] # create vector of ID variables
measure_vars <- names(tidy_dat)[-c(1, 68, 69, 70)] # create vector of measure variables
melted_dat <- melt(tidy_dat, id=id_vars, measure.vars = measure_vars) # melt dataset for easier summarization

melted_dat2 <- group_by(melted_dat, activityLabel, subject, variable) # create groups based on activity, subject, and variable on which to summarize

avg_by_subject <- summarize(melted_dat2, averageValue = mean(value))  # summarize the mean value for each of the aforementioned groups


