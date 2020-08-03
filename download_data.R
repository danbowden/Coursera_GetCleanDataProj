#### Getting and Cleaning Data Project
##
## GOAL: prepare tidy data that can be used for later analysis.




## Download and unzip data
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

# download file, unzip to data subdirectory, and read RDS dataset
download.file(fileURL, dest="dataset.zip", method = "curl")
unzip("dataset.zip", exdir = "data")


