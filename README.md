This repo contains a tidy data set of accelerometer- and gyroscope-based measurements obtained during different 
activities with the Samsung Galaxy S smartphone.
For more info see:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The tidy data set is limited to the mean and standard deviation of different measurements. The mean and standard deviation measurements
in the tidy data set are averaged over activities (e.g. 'walking'). For an overview of measurements and activities have a look at codeBook.md
in this repo.

The tidy data set was created based on test and training measurement data sets (xtest, xtrain), a file containing
activity labels (ytest, ytrain), and another file containing descriptive variable names (features). 
All data was downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  

The code to create the tidy data set can be found in runAnalysis.R .

This repo also contains a csv file with the tidy data (called tidy_data.csv).
