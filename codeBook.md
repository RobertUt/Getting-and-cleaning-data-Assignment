The goal of this assignment was to create a tidy data set containing mean and standard deviation of different accelerometer- and gyroscope-based measurements. The tidy data set was created based on available test and training 
data sets (xtest, xtrain), a file containing activity labels (ytest, ytrain), and another file 
containing descriptive variable names (features) (a link to the data you find in README.md in this repo). 

The measurements as stored in the features file were used to label the variables in xtest and xtrain.
For the full list of measurements see the features file.  Here a summarized list of the measurements:
  
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The measurements in xtest and xtrain are stored as numeric values. 

ytest and ytrain contain descriptive activity names that were added to the xtest and xtrain data sets.

After merging the xtest and xtrain data sets the columns containing mean and standard deviation
were extracted and the values were averaged over activity. Here a list of the activities:
  
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The resulting tidy data set has 80 columns (measurements) and 6 rows (activities).
