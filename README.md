# Getting-and-Cleaning-Data-Week4-Assignment
This repo is for Week 4's Assignment of Coursera's Getting and Cleaning Data class. The goal of the assignment is to prove our competence in obtaining, filtering and combining existing datasets and ultimately generating a tidy summary dataset with supporting documentation. 

##Original Data
The original data used was downloaded from <blockquote>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</blockquote> 

This data contains measurements from accelerometers worn by 30 different subjects as they engaged in 6 different activities.   

These files were used from the data source:
<ul>
  <li>activity_labels.txt: Defines the different activites of the subjects</li>
  <li>features.txt: Defines the different measurements that were recorded</li>
  <li>subject_train.txt: Lists which subject was involed in each training observation</li>
  <li>X_train.txt: Lists the measurements for each training observartion</li>
  <li>y_train.txt: Lists the activity that corresponds with each training observation</li>
  <li>subject_test.txt: Lists which subject was involed in each testing observation</li>
  <li>X_test.txt: Lists the measurements for each testing observartion</li>
  <li>y_test.txt: Lists the activity that corresponds with each testing observation
</ul>

##Script Process
The run_analysis.R script is designed to process the original data according to these rules from the assignment:
<ul>
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ul>

##Tidy Dataset
The output of the script saves a file called <q>tidy_test_train.txt</q> to your working directory, which has an average of each required  measurement by activity and subject. The file can be read into R using this command:

<code>
read.table("./tidy_test_train.txt",header = TRUE)
</code>
