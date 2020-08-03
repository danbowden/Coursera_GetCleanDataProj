# Coursera_GetCleanDataProj
Coursera - Getting and Cleaning Data in R course


File *download_data.R* downloads zip file and extracts to a subfolder.
File *run_analysis.R* pulls in the train and test datasets to process into tidy combined datasets with proper column naming.

Additional details on variables and code interactions can be found in the *Codebook.md*

======================================
FROM ORIGINAL UCI HAR Dataset
For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
