# Code book for variables and files used
#3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md

Code files:
*download_data.R - Downloads zip file data and unzips to folder location
*run_analysis.R - reads in train and test datasets, merges together and creates two tidy datasets per instructions


Input Variables Used:
*X_test - feature values for each observation in the test set
*X_train - feature values for each observation in the train set
*y_test - actual body position for each observation in the test set
*y_train - actual body position for each observation in the train set
*subject_test - subject ID number for each observation in the test set
*subject_train - subject ID number for each observation in the train set
*feature_labels - labels for the 561 features in the X datasets

Interim variables used:
*X_total - combined observations from test and train set
*y_total - combined actual body positions from test and train set
*subject_total - combined subject ID numbers for test and train sets
*X_total_mean_std - combined observations from test and train set with only mean and standard deviation columns


Output variables used:
*tidy1_data - output dataset that combines train and test sets mean and std columns, with subject ID and actual position included
*tidy2_summary - output dataset that summarizes the average variable by subject (each row is a particular subject across the entire study)