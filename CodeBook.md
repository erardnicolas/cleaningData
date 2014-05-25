##CodeBook for the generation of a tidy dataset from accelerometers data from the Samsung Galaxy S smartphone

###The data
The data used in this script was collected from accelerometers from the Samsung Galaxy S smartphone. 

All the data used was collected by the following authors: 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

Below is a description by the authors of the study of how the data was generated:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

###Transformations made on the data
To create the tidy data set merging the training and test examples, 5 steps were taken:

1. Load the data in R and merge training and test set
2. Extract the mean and standard deviation for each measurement.
3. Appropriately label the data set with descriptive activity names
4. For each subject and each activity, calculate the mean of each variable.
5. Export the new tidy data set.

###Variables in the new dataset.
Subject 