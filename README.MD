# Tidying and Summarizing "Human Activity Recognition Using Smartphones Dataset" data
## Read Me

The R script titled "runAnalysis.R" reads the following eight source data files from the "Human Activity Recognition Using Smartphones Dataset" (data found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Here is a description of the study performed as described in the README included with the source data used in this analysis:

	"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

	The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

	For each record it is provided:
	======================================

	- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
	- Triaxial Angular velocity from the gyroscope. 
	- A 561-feature vector with time and frequency domain variables. 
	- Its activity label. 
	- An identifier of the subject who carried out the experiment."


After reading in the source data, the script combines the values (training or testing set) activity labels, and subject values into training and testing datasets respectively.

A new variable is then added to the training and testing datasets the source of each observation in those sets (i.e., "training" for training, "testing" for testing

The training and testing datasets are then combined using R's rbind function.

The new dataset is then subsetted to include the ID variables and measure variables which measure the mean and standard deviation. This is the Tidy dataset, which contains one observation per row, one ID or Measure variable per column, and descriptive variable names

The script then creates a summary dataset showing the average of each measure variable for each combination of subject (participant).

To do this, it first melts the tidy dataset. Then it groups the melted dataset 
