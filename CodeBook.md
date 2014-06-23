# Code Book

The *tidyData.txt* contains 180 observations (rows) of 81 variables (columns). Every row contains means of each measurements to an experiment condition (Subject, Activity).

# Columns

## Identifier

* SubjectID

	Unique ID for the subject

* Activity - [Walking | WalkingUpstairs | WalkingDownstairs | Sitting | Standing | Laying]

	Assigned activity for this session

## Variables

These column names were extracted from the features_info.txt, with parentheses stripped and hyphens (-) replaced with underscores (_) for readability. Check *UCI HAR Dataset/features_info.txt* for more information. 

Values are extracted from raw data files, and then aggregated against SubjectID and Activity using `mean()`. Here's the list:

* tBodyAcc:
	
	Means and standard deviations in time domain body accelerations on X, Y and Z axes respectively. Derived from raw output of triaxial accelerometers.

	* *tBodyAcc_mean_X*
	* *tBodyAcc_mean_Y*
	* *tBodyAcc_mean_Z*
	* *tBodyAcc_std_X*
	* *tBodyAcc_std_Y*
	* *tBodyAcc_std_Z*

* tGravityAcc:

	Similar to tBodyAcc. Derived from raw output of triaxial accelerometers.
	
	* tGravityAcc_mean_X
	* tGravityAcc_mean_Y
	* tGravityAcc_mean_Z
	* tGravityAcc_std_X
	* tGravityAcc_std_Y
	* tGravityAcc_std_Z

* tBodyAccJerk:

	tBodyAcc derived in time produces jerks in each axes.

	* tBodyAccJerk_mean_X
	* tBodyAccJerk_mean_Y
	* tBodyAccJerk_mean_Z
	* tBodyAccJerk_std_X
	* tBodyAccJerk_std_Y
	* tBodyAccJerk_std_Z

* tBodyGyro:

	Mean and standard deviations of body angular velocities in time domain on X, Y, and Z axes respectively. 

	* tBodyGyro_mean_X
	* tBodyGyro_mean_Y
	* tBodyGyro_mean_Z
	* tBodyGyro_std_X
	* tBodyGyro_std_Y
	* tBodyGyro_std_Z

* tBodyGyroJerk

	Means and standard deviations on each axes of first derivative to tBodyGyro.
	
	* tBodyGyroJerk_mean_X
	* tBodyGyroJerk_mean_Y
	* tBodyGyroJerk_mean_Z
	* tBodyGyroJerk_std_X
	* tBodyGyroJerk_std_Y
	* tBodyGyroJerk_std_Z

* Euclidean Norms of time-domain variables

	Euclidean norms of such variables

	* tBodyAccMag_mean
	* tBodyAccMag_std
	* tGravityAccMag_mean
	* tGravityAccMag_std
	* tBodyAccJerkMag_mean
	* tBodyAccJerkMag_std
	* tBodyGyroMag_mean
	* tBodyGyroMag_std
	* tBodyGyroJerkMag_mean
	* tBodyGyroJerkMag_std

* fBodyAcc

	Means and standard deviations of body acceleration in frequency domain (FFT) on each axes.

	* fBodyAcc_mean_X
	* fBodyAcc_mean_Y
	* fBodyAcc_mean_Z
	* fBodyAcc_std_X
	* fBodyAcc_std_Y
	* fBodyAcc_std_Z

* fBodyAcc_meanFreq

	Weighted mean on body acceleration frequencies.

	* fBodyAcc_meanFreq_X
	* fBodyAcc_meanFreq_Y
	* fBodyAcc_meanFreq_Z

* fBodyAccJerk

	Similar to fBodyAcc variables, with tBodyAccJerk (first derivative to tBodyAcc) as their primary inputs. Shows means and standard deviations of body jerks in frequency domain, as well as the weighted mean on fBodyAccJerk.

	* fBodyAccJerk_mean_X
	* fBodyAccJerk_mean_Y
	* fBodyAccJerk_mean_Z
	* fBodyAccJerk_std_X
	* fBodyAccJerk_std_Y
	* fBodyAccJerk_std_Z
	* fBodyAccJerk_meanFreq_X
	* fBodyAccJerk_meanFreq_Y
	* fBodyAccJerk_meanFreq_Z

* fBodyGyro

	Similar to fBodyAcc and fBodyAccJerk, with tBodyGyro as primary inputs.

	* fBodyGyro_mean_X
	* fBodyGyro_mean_Y
	* fBodyGyro_mean_Z
	* fBodyGyro_std_X
	* fBodyGyro_std_Y
	* fBodyGyro_std_Z
	* fBodyGyro_meanFreq_X
	* fBodyGyro_meanFreq_Y
	* fBodyGyro_meanFreq_Z

* Euclidean norms of frequency-domain variables
	
	Euclidean norms of such variables

	* fBodyAccMag_mean
	* fBodyAccMag_std
	* fBodyAccMag_meanFreq
	* fBodyBodyAccJerkMag_mean
	* fBodyBodyAccJerkMag_std
	* fBodyBodyAccJerkMag_meanFreq
	* fBodyBodyGyroMag_mean
	* fBodyBodyGyroMag_std
	* fBodyBodyGyroMag_meanFreq
	* fBodyBodyGyroJerkMag_mean
	* fBodyBodyGyroJerkMag_std
	* fBodyBodyGyroJerkMag_meanFreq
