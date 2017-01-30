library(dplyr)

#Download and unzip data
if(!file.exists("./wearabledata.zip")){
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "./wearabledata.zip")
    }

if(!file.exists("./UCI HAR Dataset")){
  unzip("./wearabledata.zip")
}


#Load feature values
featuresdata <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)

#Collect index for mean and std variables only. Exclude meanFreq. Clean up special characters in feature names
featIndex <- grep("mean\\(|std\\(", featuresdata[,2])
featNames <- gsub("\\(|\\)|-","",featuresdata[,2])


#Load test and train data and add column names from features table
test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = featNames)
train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = featNames)

#Load activity and subject values for each set and add to data frame
testAct <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activityCode")
testSub <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
test <- cbind(testSub, testAct, test[,featIndex])

trainAct <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activityCode")
trainSub <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
train <- cbind(trainSub, trainAct, train[,featIndex])

tt <- rbind(test,train)

#Load activity descriptions and merge to data
activity <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("activityCode","activity"))
tt <- merge(activity,tt) 
tt <- select(tt,-activityCode)

#Get the averages after grouping data by activity and subject and save to new dataset
tidy_test_train <- tt %>% group_by(activity,subject) %>% summarize_all(mean)
write.table(tidy_test_train, "./tidy_test_train.txt", row.names = FALSE, quote = FALSE)