### Note: the hashes followed by numbers indicate the steps to create a tidy data set:  
##  Merge the training and the test sets to create one data set (1).  
##  Extract only the measurements on the mean and standard deviation for each measurement (2).  
##  Use descriptive activity names to name the activities in the data set (3).  
##  Appropriately label the data set with descriptive variable names (4).  
##  Create a second, independent tidy data set with the average of each variable for each activity and each subject (5).

##  Note: The assignment was solved by doing (3) and (4) first. Followed by (1), (2) and (5).


### read the data ...

xtest <- read.table("./X_test.txt")
dim(xtest)
xtrain <- read.table("./X_train.txt")
dim(xtrain)
ytest <- read.table("./Y_test.txt")
dim(ytest)
ytrain <- read.table("./Y_train.txt")
dim(ytrain)

feat <- read.table("./features.txt", header = FALSE)
dim(feat)


### 3

library(dplyr)

ytest$V1 %<>% gsub("1", "walking", .) %>% gsub("2", "walking_upstairs", .) %>% gsub("3", "walking_downstairs", .) %>% gsub("4", "sitting", .) %>% gsub("5", "standing", .) %>% gsub("6", "laying", .)
head(ytest$V1)

ytrain$V1 %<>% gsub("1", "walking", .) %>% gsub("2", "walking_upstairs", .) %>% gsub("3", "walking_downstairs", .) %>% gsub("4", "sitting", .) %>% gsub("5", "standing", .) %>% gsub("6", "laying", .)
head(ytrain$V1)


### 4

colnames(xtest) <- feat$V2
names(xtest)

colnames(xtrain) <- feat$V2
names(xtrain)


### put together ...

xtest["activity"] <- ytest
xtest$activity
names(xtest)
dim(xtest)

xtrain["activity"] <- ytrain
xtrain$activity
names(xtrain)
dim(xtrain)


### 1 

merged_dat <-  rbind(xtest, xtrain)
dim(merged_dat)


### 2 

merged_mean_sd <- merged_dat[grepl("activity|mean|std", names(merged_dat))]
names(merged_mean_sd)
dim(merged_mean_sd)


### 5 

merged_mean_sd$activity
tidy_data <- group_by(merged_mean_sd, activity) %>% summarize_all(mean)
tidy_data


### save to file ...

write.table(tidy_data, "./tidy_data.csv", append = FALSE, sep = ",", dec = ".",
            row.names = FALSE, col.names = TRUE)
tidy_data <- read.csv("./tidy_data.csv")
dim(tidy_data)

