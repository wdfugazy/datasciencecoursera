# Getting and Cleaning Data - Course Project

## Codebook

Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Field : R Class - Description
- activityCode               : int  - number corresponding to the phsyical activity being measured
- tBodyAcc-mean()-X          : num  - mean value of the tBodyAcc signal data along the x-axis
- tBodyAcc-mean()-Y          : num  - mean value of the tBodyAcc signal data along the y-axis
- tBodyAcc-mean()-Z          : num  - mean value of the tBodyAcc signal data along the z-axis
- tBodyAcc-std()-X           : num  - standard deviation value of the tBodyAcc signal data along the x-axis
- tBodyAcc-std()-Y           : num  - standard deviation value of the tBodyAcc signal data along the y-axis
- tBodyAcc-std()-Z           : num  - standard deviation value of the tBodyAcc signal data along the z-axis
- tGravityAcc-mean()-X       : num  - mean value of the tGravityAcc signal data along the x-axis
- tGravityAcc-mean()-Y       : num  - mean value of the tGravityAcc signal data along the y-axis
- tGravityAcc-mean()-Z       : num  - mean value of the tGravityAcc signal data along the z-axis
- tGravityAcc-std()-X        : num  - standard deviation value of the tGravityAcc signal data along the x-axis
- tGravityAcc-std()-Y        : num  - standard deviation value of the tGravityAcc signal data along the y-axis
- tGravityAcc-std()-Z        : num  - standard deviation value of the tGravityAcc signal data along the z-axis
- tBodyAccJerk-mean()-X      : num  - mean value of the tBodyAccJerk signal data along the x-axis
- tBodyAccJerk-mean()-Y      : num  - mean value of the tBodyAccJerk signal data along the y-axis
- tBodyAccJerk-mean()-Z      : num  - mean value of the tBodyAccJerk signal data along the z-axis
- tBodyAccJerk-std()-X       : num  - standard deviation value of the tBodyAccJerk signal data along the x-axis
- tBodyAccJerk-std()-Y       : num  - standard deviation value of the tBodyAccJerk signal data along the y-axis
- tBodyAccJerk-std()-Z       : num  - standard deviation value of the tBodyAccJerk signal data along the z-axis
- tBodyGyro-mean()-X         : num  - mean value of the tBodyGyro signal data along the x-axis
- tBodyGyro-mean()-Y         : num  - mean value of the tBodyGyro signal data along the y-axis
- tBodyGyro-mean()-Z         : num  - mean value of the tBodyGyro signal data along the z-axis
- tBodyGyro-std()-X          : num  - standard deviation value of the tBodyGyro signal data along the x-axis
- tBodyGyro-std()-Y          : num  - standard deviation value of the tBodyGyro signal data along the y-axis
- tBodyGyro-std()-Z          : num  - standard deviation value of the tBodyGyro signal data along the z-axis
- tBodyGyroJerk-mean()-X     : num  - mean value of the tBodyGyroJerk signal data along the x-axis
- tBodyGyroJerk-mean()-Y     : num  - mean value of the tBodyGyroJerk signal data along the y-axis
- tBodyGyroJerk-mean()-Z     : num  - mean value of the tBodyGyroJerk signal data along the z-axis
- tBodyGyroJerk-std()-X      : num  - standard deviation value of the tBodyGyroJerk signal data along the x-axis
- tBodyGyroJerk-std()-Y      : num  - standard deviation value of the tBodyGyroJerk signal data along the y-axis
- tBodyGyroJerk-std()-Z      : num  - standard deviation value of the tBodyGyroJerk signal data along the z-axis
- tBodyAccMag-mean()         : num  - mean value of the tBodyAccMag signal data 
- tBodyAccMag-std()          : num  - standard deviation value of the tBodyAccMag signal data 
- tGravityAccMag-mean()      : num  - mean value of the tBodyAccJerkMag signal data
- tGravityAccMag-std()       : num  - standard deviation value of the tBodyAccJerkMag signal data 
- tBodyAccJerkMag-mean()     : num  - mean value of the tBodyAccJerkMag signal data
- tBodyAccJerkMag-std()      : num  - standard deviation value of the tBodyAccMag signal data
- tBodyGyroMag-mean()        : num  - mean value of the tBodyGyroMag signal data
- tBodyGyroMag-std()         : num  - standard deviation value of the tBodyGyroMag signal data
- tBodyGyroJerkMag-mean()    : num  - mean value of the tBodyGyroJerkMag signal data
- tBodyGyroJerkMag-std()     : num  - standard deviation value of the tBodyGyroJerkMag signal data
- fBodyAcc-mean()-X          : num  - mean value of the fBodyAcc signal data along the x-axis
- fBodyAcc-mean()-Y          : num  - mean value of the fBodyAcc signal data along the y-axis
- fBodyAcc-mean()-Z          : num  - mean value of the fBodyAcc signal data along the z-axis
- fBodyAcc-std()-X           : num  - standard deviation value of the fBodyAcc signal data along the x-axis
- fBodyAcc-std()-Y           : num  - standard deviation value of the fBodyAcc signal data along the y-axis
- fBodyAcc-std()-Z           : num  - standard deviation value of the fBodyAcc signal data along the z-axis
- fBodyAccJerk-mean()-X      : num  - mean value of the fBodyAccJerk signal data along the x-axis
- fBodyAccJerk-mean()-Y      : num  - mean value of the fBodyAccJerk signal data along the y-axis
- fBodyAccJerk-mean()-Z      : num  - mean value of the fBodyAccJerk signal data along the z-axis
- fBodyAccJerk-std()-X       : num  - standard deviation value of the fBodyAccJerk signal data along the x-axis
- fBodyAccJerk-std()-Y       : num  - standard deviation value of the fBodyAccJerk signal data along the y-axis
- fBodyAccJerk-std()-Z       : num  - standard deviation value of the fBodyAccJerk signal data along the z-axis
- fBodyGyro-mean()-X         : num  - mean value of the fBodyGyro signal data along the x-axis
- fBodyGyro-mean()-Y         : num  - mean value of the fBodyGyro signal data along the y-axis
- fBodyGyro-mean()-Z         : num  - mean value of the fBodyGyro signal data along the x-axis
- fBodyGyro-std()-X          : num  - standard deviation value of the fBodyGyro signal data along the x-axis
- fBodyGyro-std()-Y          : num  - standard deviation value of the fBodyGyro signal data along the y-axis
- fBodyGyro-std()-Z          : num  - standard deviation value of the fBodyGyro signal data along the z-axis
- fBodyAccMag-mean()         : num  - mean value of the fBodyAccMag signal data
- fBodyAccMag-std()          : num  - standard deviation value of the fBodyAccMag signal data
- fBodyBodyAccJerkMag-mean() : num  - mean value of the fBodyBodyAccJerkMag signal data
- fBodyBodyAccJerkMag-std()  : num  - standard deviation value of the fBodyBodyAccJerkMag signal data
- fBodyBodyGyroMag-mean()    : num  - mean value of the fBodyBodyGyroMag signal data
- fBodyBodyGyroMag-std()     : num  - standard deviation value of the fBodyBodyGyroMag signal data
- fBodyBodyGyroJerkMag-mean(): num  - mean value of the fBodyBodyGyroJerkMag signal data
- fBodyBodyGyroJerkMag-std() : num  - standard deviation value of the fBodyBodyGyroJerkMag signal data
- subject                    : int  - number identifying the participant of the study (numbers 1 through 30)
- source                     : chr  - text indicating whether the data came from the test data or training data set
- activityLabel              : Factor  - descriptive text field for the activity code (1 = Walking; 2 = Walking_Upstairs; 3 = Walking_Downstairs; 4 = Sitting; 5 = Standing; 6 = Laying)

With the exception of the "source" field, the data were assembled from the training and testing set data and labels of the "Human Activity Recognition Using Smartphones Dataset," produced by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
A more detailed explanation of the process by which these data were assembled is included in the notes to the script that performs that operation ("runAnalysis.R")

