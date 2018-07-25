
# Code Book

## Experiment Description

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:


- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
===================================================================================================================

## Data manipulation : Code

An R script called run_analysis.R that does the following was created:

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


===================================================================================================================


## Data Dictionary

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors


### Variables

Subject - volunteer identifier (1:30)
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30

Activity - type of activity performed
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


tBodyAcc-mean()-X	
	timebodyacceleration mean   x

tBodyAcc-mean()-Y	
	timebodyacceleration mean   y

tBodyAcc-mean()-Z	
	timebodyacceleration mean   z

tBodyAcc-std()-X	
	timebodyacceleration standarddeviation   x

tBodyAcc-std()-Y	
	timebodyacceleration standarddeviation   y

tBodyAcc-std()-Z	
	timebodyacceleration standarddeviation   z

tBodyAcc-mad()-X	
	timebodyacceleration mad   x

tBodyAcc-mad()-Y	
	timebodyacceleration mad   y

tBodyAcc-mad()-Z	
	timebodyacceleration mad   z

tBodyAcc-max()-X	
	timebodyacceleration max   x

tBodyAcc-max()-Y	
	timebodyacceleration max   y

tBodyAcc-max()-Z	
	timebodyacceleration max   z

tBodyAcc-min()-X	
	timebodyacceleration min   x

tBodyAcc-min()-Y	
	timebodyacceleration min   y

tBodyAcc-min()-Z	
	timebodyacceleration min   z

tBodyAcc-sma()	
	timebodyacceleration sma  

tBodyAcc-energy()-X	
	timebodyacceleration energy   x

tBodyAcc-energy()-Y	
	timebodyacceleration energy   y

tBodyAcc-energy()-Z	
	timebodyacceleration energy   z

tBodyAcc-iqr()-X	
	timebodyacceleration iqr   x
tBodyAcc-iqr()-Y	
	timebodyacceleration iqr   y
tBodyAcc-iqr()-Z	
	timebodyacceleration iqr   z
tBodyAcc-entropy()-X	
	timebodyacceleration entropy   x

tBodyAcc-entropy()-Y	
	timebodyacceleration entropy   y

tBodyAcc-entropy()-Z	
	timebodyacceleration entropy   z

tBodyAcc-arCoeff()-X,1	
	timebodyacceleration arcoeff   x,1

tBodyAcc-arCoeff()-X,2	
	timebodyacceleration arcoeff   x,2

tBodyAcc-arCoeff()-X,3	
	timebodyacceleration arcoeff   x,3

tBodyAcc-arCoeff()-X,4	
	timebodyacceleration arcoeff   x,4

tBodyAcc-arCoeff()-Y,1	
	timebodyacceleration arcoeff   y,1

tBodyAcc-arCoeff()-Y,2	
	timebodyacceleration arcoeff   y,2

tBodyAcc-arCoeff()-Y,3	
	timebodyacceleration arcoeff   y,3
tBodyAcc-arCoeff()-Y,4	
	timebodyacceleration arcoeff   y,4
tBodyAcc-arCoeff()-Z,1	
	timebodyacceleration arcoeff   z,1
tBodyAcc-arCoeff()-Z,2	
	timebodyacceleration arcoeff   z,2
tBodyAcc-arCoeff()-Z,3	
	timebodyacceleration arcoeff   z,3
tBodyAcc-arCoeff()-Z,4	
	timebodyacceleration arcoeff   z,4
tBodyAcc-correlation()-X,Y	
	timebodyacceleration correlation   x,y
tBodyAcc-correlation()-X,Z	
	timebodyacceleration correlation   x,z
tBodyAcc-correlation()-Y,Z	
	timebodyacceleration correlation   y,z
tGravityAcc-mean()-X	
	timegravityacceleration mean   x
tGravityAcc-mean()-Y	
	timegravityacceleration mean   y
tGravityAcc-mean()-Z	
	timegravityacceleration mean   z
tGravityAcc-std()-X	
	timegravityacceleration standarddeviation   x
tGravityAcc-std()-Y	
	timegravityacceleration standarddeviation   y
tGravityAcc-std()-Z	
	timegravityacceleration standarddeviation   z
tGravityAcc-mad()-X	
	timegravityacceleration mad   x
tGravityAcc-mad()-Y	
	timegravityacceleration mad   y
tGravityAcc-mad()-Z	
	timegravityacceleration mad   z
tGravityAcc-max()-X	
	timegravityacceleration max   x
tGravityAcc-max()-Y	
	timegravityacceleration max   y
tGravityAcc-max()-Z	
	timegravityacceleration max   z
tGravityAcc-min()-X	
	timegravityacceleration min   x
tGravityAcc-min()-Y	
	timegravityacceleration min   y
tGravityAcc-min()-Z	
	timegravityacceleration min   z
tGravityAcc-sma()	
	timegravityacceleration sma  
tGravityAcc-energy()-X		
	timegravityacceleration energy   x
tGravityAcc-energy()-Y	
	timegravityacceleration energy   y
tGravityAcc-energy()-Z
	timegravityacceleration energy   z
tGravityAcc-iqr()-X	
	timegravityacceleration iqr   x
tGravityAcc-iqr()-Y	
	timegravityacceleration iqr   y
tGravityAcc-iqr()-Z	
	timegravityacceleration iqr   z
tGravityAcc-entropy()-X	
	timegravityacceleration entropy   x
tGravityAcc-entropy()-Y	
	timegravityacceleration entropy   y
tGravityAcc-entropy()-Z	
	timegravityacceleration entropy   z
tGravityAcc-arCoeff()-X,1	
	timegravityacceleration arcoeff   x,1
tGravityAcc-arCoeff()-X,2	
	timegravityacceleration arcoeff   x,2
tGravityAcc-arCoeff()-X,3	
	timegravityacceleration arcoeff   x,3
tGravityAcc-arCoeff()-X,4	
	timegravityacceleration arcoeff   x,4
tGravityAcc-arCoeff()-Y,1	
	timegravityacceleration arcoeff   y,1
tGravityAcc-arCoeff()-Y,2	
	timegravityacceleration arcoeff   y,2
tGravityAcc-arCoeff()-Y,3	
	timegravityacceleration arcoeff   y,3
tGravityAcc-arCoeff()-Y,4	
	timegravityacceleration arcoeff   y,4
tGravityAcc-arCoeff()-Z,1	
	timegravityacceleration arcoeff   z,1
tGravityAcc-arCoeff()-Z,2	
	timegravityacceleration arcoeff   z,2
tGravityAcc-arCoeff()-Z,3	
	timegravityacceleration arcoeff   z,3
tGravityAcc-arCoeff()-Z,4	
	timegravityacceleration arcoeff   z,4
tGravityAcc-correlation()-X,Y	
	timegravityacceleration correlation   x,y
tGravityAcc-correlation()-X,Z	
	timegravityacceleration correlation   x,z
tGravityAcc-correlation()-Y,Z	
	timegravityacceleration correlation   y,z
tBodyAccJerk-mean()-X	
	timebodyaccelerationjerk mean   x
tBodyAccJerk-mean()-Y	
	timebodyaccelerationjerk mean   y
tBodyAccJerk-mean()-Z	
	timebodyaccelerationjerk mean   z
tBodyAccJerk-std()-X	
	timebodyaccelerationjerk standarddeviation   x
tBodyAccJerk-std()-Y	
	timebodyaccelerationjerk standarddeviation   y
tBodyAccJerk-std()-Z	
	timebodyaccelerationjerk standarddeviation   z
tBodyAccJerk-mad()-X	
	timebodyaccelerationjerk mad   x
tBodyAccJerk-mad()-Y	
	timebodyaccelerationjerk mad   y
tBodyAccJerk-mad()-Z	
	timebodyaccelerationjerk mad   z
tBodyAccJerk-max()-X	
	timebodyaccelerationjerk max   x
tBodyAccJerk-max()-Y	
	timebodyaccelerationjerk max   y
tBodyAccJerk-max()-Z	
	timebodyaccelerationjerk max   z
tBodyAccJerk-min()-X	
	timebodyaccelerationjerk min   x
tBodyAccJerk-min()-Y	
	timebodyaccelerationjerk min   y
tBodyAccJerk-min()-Z	
	timebodyaccelerationjerk min   z
tBodyAccJerk-sma()	
	timebodyaccelerationjerk sma  
tBodyAccJerk-energy()-X	
	timebodyaccelerationjerk energy   x
tBodyAccJerk-energy()-Y	
	timebodyaccelerationjerk energy   y
tBodyAccJerk-energy()-Z	
	timebodyaccelerationjerk energy   z
tBodyAccJerk-iqr()-X	
	timebodyaccelerationjerk iqr   x
tBodyAccJerk-iqr()-Y	
	timebodyaccelerationjerk iqr   y
tBodyAccJerk-iqr()-Z	
	timebodyaccelerationjerk iqr   z
tBodyAccJerk-entropy()-X	
	timebodyaccelerationjerk entropy   x
tBodyAccJerk-entropy()-Y	
	timebodyaccelerationjerk entropy   y
tBodyAccJerk-entropy()-Z	
	timebodyaccelerationjerk entropy   z
tBodyAccJerk-arCoeff()-X,1	
	timebodyaccelerationjerk arcoeff   x,1
tBodyAccJerk-arCoeff()-X,2	
	timebodyaccelerationjerk arcoeff   x,2
tBodyAccJerk-arCoeff()-X,3	
	timebodyaccelerationjerk arcoeff   x,3
tBodyAccJerk-arCoeff()-X,4	
	timebodyaccelerationjerk arcoeff   x,4
tBodyAccJerk-arCoeff()-Y,1	
	timebodyaccelerationjerk arcoeff   y,1
tBodyAccJerk-arCoeff()-Y,2	
	timebodyaccelerationjerk arcoeff   y,2
tBodyAccJerk-arCoeff()-Y,3	
	timebodyaccelerationjerk arcoeff   y,3
tBodyAccJerk-arCoeff()-Y,4	
	timebodyaccelerationjerk arcoeff   y,4
tBodyAccJerk-arCoeff()-Z,1	
	timebodyaccelerationjerk arcoeff   z,1
tBodyAccJerk-arCoeff()-Z,2	
	timebodyaccelerationjerk arcoeff   z,2
tBodyAccJerk-arCoeff()-Z,3	
	timebodyaccelerationjerk arcoeff   z,3
tBodyAccJerk-arCoeff()-Z,4	
	timebodyaccelerationjerk arcoeff   z,4
tBodyAccJerk-correlation()-X,Y	
	timebodyaccelerationjerk correlation   x,y
tBodyAccJerk-correlation()-X,Z	
	timebodyaccelerationjerk correlation   x,z
tBodyAccJerk-correlation()-Y,Z	
	timebodyaccelerationjerk correlation   y,z
tBodyGyro-mean()-X	
	timebodygyro mean   x
tBodyGyro-mean()-Y	
	timebodygyro mean   y
tBodyGyro-mean()-Z	
	timebodygyro mean   z
tBodyGyro-std()-X	
	timebodygyro standarddeviation   x
tBodyGyro-std()-Y	
	timebodygyro standarddeviation   y
tBodyGyro-std()-Z	
	timebodygyro standarddeviation   z
tBodyGyro-mad()-X	
	timebodygyro mad   x
tBodyGyro-mad()-Y	
	timebodygyro mad   y
tBodyGyro-mad()-Z	
	timebodygyro mad   z
tBodyGyro-max()-X	
	timebodygyro max   x
tBodyGyro-max()-Y	
	timebodygyro max   y
tBodyGyro-max()-Z	
	timebodygyro max   z
tBodyGyro-min()-X	
	timebodygyro min   x
tBodyGyro-min()-Y	
	timebodygyro min   y
tBodyGyro-min()-Z	
	timebodygyro min   z
tBodyGyro-sma()	
	timebodygyro sma  
tBodyGyro-energy()-X	
	timebodygyro energy   x
tBodyGyro-energy()-Y	
	timebodygyro energy   y
tBodyGyro-energy()-Z	
	timebodygyro energy   z
tBodyGyro-iqr()-X	
	timebodygyro iqr   x
tBodyGyro-iqr()-Y	
	timebodygyro iqr   y
tBodyGyro-iqr()-Z	
	timebodygyro iqr   z
tBodyGyro-entropy()-X	
	timebodygyro entropy   x
tBodyGyro-entropy()-Y	
	timebodygyro entropy   y
tBodyGyro-entropy()-Z	
	timebodygyro entropy   z
tBodyGyro-arCoeff()-X,1	
	timebodygyro arcoeff   x,1
tBodyGyro-arCoeff()-X,2	
	timebodygyro arcoeff   x,2
tBodyGyro-arCoeff()-X,3	
	timebodygyro arcoeff   x,3
tBodyGyro-arCoeff()-X,4	
	timebodygyro arcoeff   x,4
tBodyGyro-arCoeff()-Y,1	
	timebodygyro arcoeff   y,1
tBodyGyro-arCoeff()-Y,2	
	timebodygyro arcoeff   y,2
tBodyGyro-arCoeff()-Y,3	
	timebodygyro arcoeff   y,3
tBodyGyro-arCoeff()-Y,4	
	timebodygyro arcoeff   y,4
tBodyGyro-arCoeff()-Z,1	t
	imebodygyro arcoeff   z,1
tBodyGyro-arCoeff()-Z,2	
	timebodygyro arcoeff   z,2
tBodyGyro-arCoeff()-Z,3	
	timebodygyro arcoeff   z,3
tBodyGyro-arCoeff()-Z,4	
	timebodygyro arcoeff   z,4
tBodyGyro-correlation()-X,Y	
	timebodygyro correlation   x,y
tBodyGyro-correlation()-X,Z	
	timebodygyro correlation   x,z
tBodyGyro-correlation()-Y,Z	
	timebodygyro correlation   y,z
tBodyGyroJerk-mean()-X	
	timebodygyrojerk mean   x
tBodyGyroJerk-mean()-Y	
	timebodygyrojerk mean   y
tBodyGyroJerk-mean()-Z	
	timebodygyrojerk mean   z
tBodyGyroJerk-std()-X	
	timebodygyrojerk standarddeviation   x
tBodyGyroJerk-std()-Y	
	timebodygyrojerk standarddeviation   y
tBodyGyroJerk-std()-Z	
	timebodygyrojerk standarddeviation   z
tBodyGyroJerk-mad()-X	
	timebodygyrojerk mad   x
tBodyGyroJerk-mad()-Y	
	timebodygyrojerk mad   y
tBodyGyroJerk-mad()-Z	
	timebodygyrojerk mad   z
tBodyGyroJerk-max()-X	
	timebodygyrojerk max   x
tBodyGyroJerk-max()-Y	
	timebodygyrojerk max   y
tBodyGyroJerk-max()-Z	
	timebodygyrojerk max   z
tBodyGyroJerk-min()-X	
	timebodygyrojerk min   x
tBodyGyroJerk-min()-Y	
	timebodygyrojerk min   y
tBodyGyroJerk-min()-Z	
	timebodygyrojerk min   z
tBodyGyroJerk-sma()	
	timebodygyrojerk sma  
tBodyGyroJerk-energy()-X	
	timebodygyrojerk energy   x
tBodyGyroJerk-energy()-Y	
	timebodygyrojerk energy   y
tBodyGyroJerk-energy()-Z	
	timebodygyrojerk energy   z
tBodyGyroJerk-iqr()-X	
	timebodygyrojerk iqr   x
tBodyGyroJerk-iqr()-Y	
	timebodygyrojerk iqr   y
tBodyGyroJerk-iqr()-Z	
	timebodygyrojerk iqr   z
tBodyGyroJerk-entropy()-X	
	timebodygyrojerk entropy   x
tBodyGyroJerk-entropy()-Y	
	timebodygyrojerk entropy   y
tBodyGyroJerk-entropy()-Z	
	timebodygyrojerk entropy   z
tBodyGyroJerk-arCoeff()-X,1	
	timebodygyrojerk arcoeff   x,1
tBodyGyroJerk-arCoeff()-X,2	
	timebodygyrojerk arcoeff   x,2
tBodyGyroJerk-arCoeff()-X,3	
	timebodygyrojerk arcoeff   x,3
tBodyGyroJerk-arCoeff()-X,4	
	timebodygyrojerk arcoeff   x,4
tBodyGyroJerk-arCoeff()-Y,1	
	timebodygyrojerk arcoeff   y,1
tBodyGyroJerk-arCoeff()-Y,2	
	timebodygyrojerk arcoeff   y,2
tBodyGyroJerk-arCoeff()-Y,3	
	timebodygyrojerk arcoeff   y,3
tBodyGyroJerk-arCoeff()-Y,4	
	timebodygyrojerk arcoeff   y,4
tBodyGyroJerk-arCoeff()-Z,1	
	timebodygyrojerk arcoeff   z,1
tBodyGyroJerk-arCoeff()-Z,2	
	timebodygyrojerk arcoeff   z,2
tBodyGyroJerk-arCoeff()-Z,3	
	timebodygyrojerk arcoeff   z,3
tBodyGyroJerk-arCoeff()-Z,4	
	timebodygyrojerk arcoeff   z,4
tBodyGyroJerk-correlation()-X,Y	
	timebodygyrojerk correlation   x,y
tBodyGyroJerk-correlation()-X,Z	
	timebodygyrojerk correlation   x,z
tBodyGyroJerk-correlation()-Y,Z	
	timebodygyrojerk correlation   y,z
tBodyAccMag-mean()	
	timebodyaccelerationmagnitude mean  
tBodyAccMag-std()	
	timebodyaccelerationmagnitude standarddeviation  
tBodyAccMag-mad()	
	timebodyaccelerationmagnitude mad  
tBodyAccMag-max()	
	timebodyaccelerationmagnitude max  
tBodyAccMag-min()	
	timebodyaccelerationmagnitude min  
tBodyAccMag-sma()		
	timebodyaccelerationmagnitude sma  
tBodyAccMag-energy()		
	timebodyaccelerationmagnitude energy  
tBodyAccMag-iqr()		
	timebodyaccelerationmagnitude iqr  
tBodyAccMag-entropy()	
	timebodyaccelerationmagnitude entropy  
tBodyAccMag-arCoeff()1	
	timebodyaccelerationmagnitude arcoeff  1
tBodyAccMag-arCoeff()2	
	timebodyaccelerationmagnitude arcoeff  2
tBodyAccMag-arCoeff()3	
	timebodyaccelerationmagnitude arcoeff  3
tBodyAccMag-arCoeff()4	
	timebodyaccelerationmagnitude arcoeff  4
tGravityAccMag-mean()	
	timegravityaccelerationmagnitude mean  
tGravityAccMag-std()	
	timegravityaccelerationmagnitude standarddeviation  
tGravityAccMag-mad()	
	timegravityaccelerationmagnitude mad  
tGravityAccMag-max()	
	timegravityaccelerationmagnitude max  
tGravityAccMag-min()	
	timegravityaccelerationmagnitude min  
tGravityAccMag-sma()	
	timegravityaccelerationmagnitude sma  
tGravityAccMag-energy()	
	timegravityaccelerationmagnitude energy  
tGravityAccMag-iqr()		
	timegravityaccelerationmagnitude iqr  
tGravityAccMag-entropy()	
	timegravityaccelerationmagnitude entropy  
tGravityAccMag-arCoeff()1	
	timegravityaccelerationmagnitude arcoeff  1
tGravityAccMag-arCoeff()2	
	timegravityaccelerationmagnitude arcoeff  2
tGravityAccMag-arCoeff()3	
	timegravityaccelerationmagnitude arcoeff  3
tGravityAccMag-arCoeff()4	
	timegravityaccelerationmagnitude arcoeff  4
tBodyAccJerkMag-mean()	
	timebodyaccelerationjerkmagnitude mean  
tBodyAccJerkMag-std()	
	timebodyaccelerationjerkmagnitude standarddeviation  
tBodyAccJerkMag-mad()	
	timebodyaccelerationjerkmagnitude mad  
tBodyAccJerkMag-max()	
	timebodyaccelerationjerkmagnitude max  
tBodyAccJerkMag-min()	
	timebodyaccelerationjerkmagnitude min  
tBodyAccJerkMag-sma()	
	timebodyaccelerationjerkmagnitude sma  
tBodyAccJerkMag-energy()	
	timebodyaccelerationjerkmagnitude energy  
tBodyAccJerkMag-iqr()	
	timebodyaccelerationjerkmagnitude iqr  
tBodyAccJerkMag-entropy()	
	timebodyaccelerationjerkmagnitude entropy  
tBodyAccJerkMag-arCoeff()1		
	timebodyaccelerationjerkmagnitude arcoeff  1
tBodyAccJerkMag-arCoeff()2	
	timebodyaccelerationjerkmagnitude arcoeff  2
tBodyAccJerkMag-arCoeff()3	
	timebodyaccelerationjerkmagnitude arcoeff  3
tBodyAccJerkMag-arCoeff()4	
	timebodyaccelerationjerkmagnitude arcoeff  4
tBodyGyroMag-mean()	
	timebodygyromagnitude mean  
tBodyGyroMag-std()	
	timebodygyromagnitude standarddeviation  
tBodyGyroMag-mad()	
	timebodygyromagnitude mad  
tBodyGyroMag-max()	
	timebodygyromagnitude max  
tBodyGyroMag-min()	
	timebodygyromagnitude min  
tBodyGyroMag-sma()	
	timebodygyromagnitude sma  
tBodyGyroMag-energy()	
	timebodygyromagnitude energy  
tBodyGyroMag-iqr()	
	timebodygyromagnitude iqr  
tBodyGyroMag-entropy()	
	timebodygyromagnitude entropy  
tBodyGyroMag-arCoeff()1	
	timebodygyromagnitude arcoeff  1
tBodyGyroMag-arCoeff()2	
	timebodygyromagnitude arcoeff  2
tBodyGyroMag-arCoeff()3	
	timebodygyromagnitude arcoeff  3
tBodyGyroMag-arCoeff()4	
	timebodygyromagnitude arcoeff  4
tBodyGyroJerkMag-mean()	
	timebodygyrojerkmagnitude mean  
tBodyGyroJerkMag-std()	
	timebodygyrojerkmagnitude standarddeviation  
tBodyGyroJerkMag-mad()	
	timebodygyrojerkmagnitude mad  
tBodyGyroJerkMag-max()	
	timebodygyrojerkmagnitude max  
tBodyGyroJerkMag-min()	
	timebodygyrojerkmagnitude min  
tBodyGyroJerkMag-sma()	
	timebodygyrojerkmagnitude sma  
tBodyGyroJerkMag-energy()	
	timebodygyrojerkmagnitude energy  
tBodyGyroJerkMag-iqr()	
	timebodygyrojerkmagnitude iqr  
tBodyGyroJerkMag-entropy()	
	timebodygyrojerkmagnitude entropy  
tBodyGyroJerkMag-arCoeff()1	
	timebodygyrojerkmagnitude arcoeff  1
tBodyGyroJerkMag-arCoeff()2	
	timebodygyrojerkmagnitude arcoeff  2
tBodyGyroJerkMag-arCoeff()3	
	timebodygyrojerkmagnitude arcoeff  3
tBodyGyroJerkMag-arCoeff()4	
	timebodygyrojerkmagnitude arcoeff  4
fBodyAcc-mean()-X	
	frequencybodyacceleration mean   x
fBodyAcc-mean()-Y	
	frequencybodyacceleration mean   y
fBodyAcc-mean()-Z	
	frequencybodyacceleration mean   z
fBodyAcc-std()-X	
	frequencybodyacceleration standarddeviation   x
fBodyAcc-std()-Y	
	frequencybodyacceleration standarddeviation   y
fBodyAcc-std()-Z	
	frequencybodyacceleration standarddeviation   z
fBodyAcc-mad()-X	
	frequencybodyacceleration mad   x
fBodyAcc-mad()-Y	
	frequencybodyacceleration mad   y
fBodyAcc-mad()-Z	
	frequencybodyacceleration mad   z
fBodyAcc-max()-X	
	frequencybodyacceleration max   x
fBodyAcc-max()-Y	
	frequencybodyacceleration max   y
fBodyAcc-max()-Z	
	frequencybodyacceleration max   z
fBodyAcc-min()-X	
	frequencybodyacceleration min   x
fBodyAcc-min()-Y	
	frequencybodyacceleration min   y
fBodyAcc-min()-Z	
	frequencybodyacceleration min   z
fBodyAcc-sma()	
	frequencybodyacceleration sma  
fBodyAcc-energy()-X	
	frequencybodyacceleration energy   x
fBodyAcc-energy()-Y	
	frequencybodyacceleration energy   y
fBodyAcc-energy()-Z	
	frequencybodyacceleration energy   z
fBodyAcc-iqr()-X	
	frequencybodyacceleration iqr   x
fBodyAcc-iqr()-Y	
	frequencybodyacceleration iqr   y
fBodyAcc-iqr()-Z	
	frequencybodyacceleration iqr   z
fBodyAcc-entropy()-X	
	frequencybodyacceleration entropy   x
fBodyAcc-entropy()-Y	
	frequencybodyacceleration entropy   y
fBodyAcc-entropy()-Z	
	frequencybodyacceleration entropy   z
fBodyAcc-maxInds-X		
	frequencybodyacceleration maxinds x
fBodyAcc-maxInds-Y	
	frequencybodyacceleration maxinds y
fBodyAcc-maxInds-Z	
	frequencybodyacceleration maxinds z
fBodyAcc-meanFreq()-X	
	frequencybodyacceleration meanfreq   x
fBodyAcc-meanFreq()-Y	
	frequencybodyacceleration meanfreq   y
fBodyAcc-meanFreq()-Z	
	frequencybodyacceleration meanfreq   z
fBodyAcc-skewness()-X
	frequencybodyacceleration skewness   x
fBodyAcc-kurtosis()-X	
	frequencybodyacceleration kurtosis   x
fBodyAcc-skewness()-Y	
	frequencybodyacceleration skewness   y
fBodyAcc-kurtosis()-Y	
	frequencybodyacceleration kurtosis   y
fBodyAcc-skewness()-Z	
	frequencybodyacceleration skewness   z
fBodyAcc-kurtosis()-Z	
	frequencybodyacceleration kurtosis   z
fBodyAcc-bandsEnergy()-1,8	
	frequencybodyacceleration bandsenergy   1,8
fBodyAcc-bandsEnergy()-9,16	
	frequencybodyacceleration bandsenergy   9,16
fBodyAcc-bandsEnergy()-17,24	
	frequencybodyacceleration bandsenergy   17,24
fBodyAcc-bandsEnergy()-25,32	
	frequencybodyacceleration bandsenergy   25,32
fBodyAcc-bandsEnergy()-33,40	
	frequencybodyacceleration bandsenergy   33,40
fBodyAcc-bandsEnergy()-41,48	
	frequencybodyacceleration bandsenergy   41,48
fBodyAcc-bandsEnergy()-49,56	
	frequencybodyacceleration bandsenergy   49,56
fBodyAcc-bandsEnergy()-57,64	
	frequencybodyacceleration bandsenergy   57,64
fBodyAcc-bandsEnergy()-1,16	
	frequencybodyacceleration bandsenergy   1,16
fBodyAcc-bandsEnergy()-17,32	
	frequencybodyacceleration bandsenergy   17,32
fBodyAcc-bandsEnergy()-33,48	
	frequencybodyacceleration bandsenergy   33,48
fBodyAcc-bandsEnergy()-49,64	
	frequencybodyacceleration bandsenergy   49,64
fBodyAcc-bandsEnergy()-1,24	
	frequencybodyacceleration bandsenergy   1,24
fBodyAcc-bandsEnergy()-25,48	
	frequencybodyacceleration bandsenergy   25,48
fBodyAcc-bandsEnergy()-1,8	
	frequencybodyacceleration bandsenergy   1,8
fBodyAcc-bandsEnergy()-9,16	
	frequencybodyacceleration bandsenergy   9,16
fBodyAcc-bandsEnergy()-17,24	
	frequencybodyacceleration bandsenergy   17,24
fBodyAcc-bandsEnergy()-25,32	
	frequencybodyacceleration bandsenergy   25,32
fBodyAcc-bandsEnergy()-33,40	
	frequencybodyacceleration bandsenergy   33,40
fBodyAcc-bandsEnergy()-41,48	
	frequencybodyacceleration bandsenergy   41,48
fBodyAcc-bandsEnergy()-49,56	
	frequencybodyacceleration bandsenergy   49,56
fBodyAcc-bandsEnergy()-57,64	
	frequencybodyacceleration bandsenergy   57,64
fBodyAcc-bandsEnergy()-1,16	
	frequencybodyacceleration bandsenergy   1,16
fBodyAcc-bandsEnergy()-17,32	
	frequencybodyacceleration bandsenergy   17,32
fBodyAcc-bandsEnergy()-33,48	
	frequencybodyacceleration bandsenergy   33,48
fBodyAcc-bandsEnergy()-49,64	
	frequencybodyacceleration bandsenergy   49,64
fBodyAcc-bandsEnergy()-1,24	
	frequencybodyacceleration bandsenergy   1,24
fBodyAcc-bandsEnergy()-25,48	
	frequencybodyacceleration bandsenergy   25,48
fBodyAcc-bandsEnergy()-1,8	
	frequencybodyacceleration bandsenergy   1,8
fBodyAcc-bandsEnergy()-9,16	
	frequencybodyacceleration bandsenergy   9,16
fBodyAcc-bandsEnergy()-17,24	
	frequencybodyacceleration bandsenergy   17,24
fBodyAcc-bandsEnergy()-25,32	
	frequencybodyacceleration bandsenergy   25,32
fBodyAcc-bandsEnergy()-33,40	
	frequencybodyacceleration bandsenergy   33,40
fBodyAcc-bandsEnergy()-41,48	
	frequencybodyacceleration bandsenergy   41,48
fBodyAcc-bandsEnergy()-49,56	
	frequencybodyacceleration bandsenergy   49,56
fBodyAcc-bandsEnergy()-57,64	
	frequencybodyacceleration bandsenergy   57,64
fBodyAcc-bandsEnergy()-1,16	
	frequencybodyacceleration bandsenergy   1,16
fBodyAcc-bandsEnergy()-17,32	
	frequencybodyacceleration bandsenergy   17,32
fBodyAcc-bandsEnergy()-33,48	
	frequencybodyacceleration bandsenergy   33,48
fBodyAcc-bandsEnergy()-49,64	
	frequencybodyacceleration bandsenergy   49,64
fBodyAcc-bandsEnergy()-1,24	
	frequencybodyacceleration bandsenergy   1,24
fBodyAcc-bandsEnergy()-25,48	
	frequencybodyacceleration bandsenergy   25,48
fBodyAccJerk-mean()-X	
	frequencybodyaccelerationjerk mean   x
fBodyAccJerk-mean()-Y	
	frequencybodyaccelerationjerk mean   y
fBodyAccJerk-mean()-Z	
	frequencybodyaccelerationjerk mean   z
fBodyAccJerk-std()-X	
	frequencybodyaccelerationjerk standarddeviation   x
fBodyAccJerk-std()-Y	
	frequencybodyaccelerationjerk standarddeviation   y
fBodyAccJerk-std()-Z	
	frequencybodyaccelerationjerk standarddeviation   z
fBodyAccJerk-mad()-X	
	frequencybodyaccelerationjerk mad   x
fBodyAccJerk-mad()-Y	
	frequencybodyaccelerationjerk mad   y
fBodyAccJerk-mad()-Z	
	frequencybodyaccelerationjerk mad   z
fBodyAccJerk-max()-X	
	frequencybodyaccelerationjerk max   x
fBodyAccJerk-max()-Y		
	frequencybodyaccelerationjerk max   y
fBodyAccJerk-max()-Z	
	frequencybodyaccelerationjerk max   z
fBodyAccJerk-min()-X	
	frequencybodyaccelerationjerk min   x
fBodyAccJerk-min()-Y	
	frequencybodyaccelerationjerk min   y
fBodyAccJerk-min()-Z	
	frequencybodyaccelerationjerk min   z
fBodyAccJerk-sma()	
	frequencybodyaccelerationjerk sma  
fBodyAccJerk-energy()-X	
	frequencybodyaccelerationjerk energy   x
fBodyAccJerk-energy()-Y	
	frequencybodyaccelerationjerk energy   y
fBodyAccJerk-energy()-Z	
	frequencybodyaccelerationjerk energy   z
fBodyAccJerk-iqr()-X	
	frequencybodyaccelerationjerk iqr   x
fBodyAccJerk-iqr()-Y	
	frequencybodyaccelerationjerk iqr   y
fBodyAccJerk-iqr()-Z	
	frequencybodyaccelerationjerk iqr   z
fBodyAccJerk-entropy()-X	
	frequencybodyaccelerationjerk entropy   x
fBodyAccJerk-entropy()-Y	
	frequencybodyaccelerationjerk entropy   y
fBodyAccJerk-entropy()-Z	
	frequencybodyaccelerationjerk entropy   z
fBodyAccJerk-maxInds-X	
	frequencybodyaccelerationjerk maxinds x
fBodyAccJerk-maxInds-Y	
	frequencybodyaccelerationjerk maxinds y
fBodyAccJerk-maxInds-Z		
	frequencybodyaccelerationjerk maxinds z
fBodyAccJerk-meanFreq()-X	
	frequencybodyaccelerationjerk meanfreq   x
fBodyAccJerk-meanFreq()-Y	
	frequencybodyaccelerationjerk meanfreq   y
fBodyAccJerk-meanFreq()-Z	
	frequencybodyaccelerationjerk meanfreq   z
fBodyAccJerk-skewness()-X	
	frequencybodyaccelerationjerk skewness   x
fBodyAccJerk-kurtosis()-X	
	frequencybodyaccelerationjerk kurtosis   x
fBodyAccJerk-skewness()-Y	
	frequencybodyaccelerationjerk skewness   y
fBodyAccJerk-kurtosis()-Y	
	frequencybodyaccelerationjerk kurtosis   y
fBodyAccJerk-skewness()-Z	
	frequencybodyaccelerationjerk skewness   z
fBodyAccJerk-kurtosis()-Z	
	frequencybodyaccelerationjerk kurtosis   z
fBodyAccJerk-bandsEnergy()-1,8	
	frequencybodyaccelerationjerk bandsenergy   1,8
fBodyAccJerk-bandsEnergy()-9,16	
	frequencybodyaccelerationjerk bandsenergy   9,16
fBodyAccJerk-bandsEnergy()-17,24		
	frequencybodyaccelerationjerk bandsenergy   17,24
fBodyAccJerk-bandsEnergy()-25,32	
	frequencybodyaccelerationjerk bandsenergy   25,32
fBodyAccJerk-bandsEnergy()-33,40	
	frequencybodyaccelerationjerk bandsenergy   33,40
fBodyAccJerk-bandsEnergy()-41,48	
	frequencybodyaccelerationjerk bandsenergy   41,48
fBodyAccJerk-bandsEnergy()-49,56	
	frequencybodyaccelerationjerk bandsenergy   49,56
fBodyAccJerk-bandsEnergy()-57,64	
	frequencybodyaccelerationjerk bandsenergy   57,64
fBodyAccJerk-bandsEnergy()-1,16	
	frequencybodyaccelerationjerk bandsenergy   1,16
fBodyAccJerk-bandsEnergy()-17,32	
	frequencybodyaccelerationjerk bandsenergy   17,32
fBodyAccJerk-bandsEnergy()-33,48	
	frequencybodyaccelerationjerk bandsenergy   33,48
fBodyAccJerk-bandsEnergy()-49,64	
	frequencybodyaccelerationjerk bandsenergy   49,64
fBodyAccJerk-bandsEnergy()-1,24	
	frequencybodyaccelerationjerk bandsenergy   1,24
fBodyAccJerk-bandsEnergy()-25,48	
	frequencybodyaccelerationjerk bandsenergy   25,48
fBodyAccJerk-bandsEnergy()-1,8	
	frequencybodyaccelerationjerk bandsenergy   1,8
fBodyAccJerk-bandsEnergy()-9,16	
	frequencybodyaccelerationjerk bandsenergy   9,16
fBodyAccJerk-bandsEnergy()-17,24	
	frequencybodyaccelerationjerk bandsenergy   17,24
fBodyAccJerk-bandsEnergy()-25,32	
	frequencybodyaccelerationjerk bandsenergy   25,32
fBodyAccJerk-bandsEnergy()-33,40		
	frequencybodyaccelerationjerk bandsenergy   33,40
fBodyAccJerk-bandsEnergy()-41,48	
	frequencybodyaccelerationjerk bandsenergy   41,48
fBodyAccJerk-bandsEnergy()-49,56	
	frequencybodyaccelerationjerk bandsenergy   49,56
fBodyAccJerk-bandsEnergy()-57,64	
	frequencybodyaccelerationjerk bandsenergy   57,64
fBodyAccJerk-bandsEnergy()-1,16	
	frequencybodyaccelerationjerk bandsenergy   1,16
fBodyAccJerk-bandsEnergy()-17,32	
	frequencybodyaccelerationjerk bandsenergy   17,32
fBodyAccJerk-bandsEnergy()-33,48	
	frequencybodyaccelerationjerk bandsenergy   33,48
fBodyAccJerk-bandsEnergy()-49,64	
	frequencybodyaccelerationjerk bandsenergy   49,64
fBodyAccJerk-bandsEnergy()-1,24	
	frequencybodyaccelerationjerk bandsenergy   1,24
fBodyAccJerk-bandsEnergy()-25,48	
	frequencybodyaccelerationjerk bandsenergy   25,48
fBodyAccJerk-bandsEnergy()-1,8	
	frequencybodyaccelerationjerk bandsenergy   1,8
fBodyAccJerk-bandsEnergy()-9,16	
	frequencybodyaccelerationjerk bandsenergy   9,16
fBodyAccJerk-bandsEnergy()-17,24	
	frequencybodyaccelerationjerk bandsenergy   17,24
fBodyAccJerk-bandsEnergy()-25,32	
	frequencybodyaccelerationjerk bandsenergy   25,32
fBodyAccJerk-bandsEnergy()-33,40	
	frequencybodyaccelerationjerk bandsenergy   33,40
fBodyAccJerk-bandsEnergy()-41,48	
	frequencybodyaccelerationjerk bandsenergy   41,48
fBodyAccJerk-bandsEnergy()-49,56	
	frequencybodyaccelerationjerk bandsenergy   49,56
fBodyAccJerk-bandsEnergy()-57,64	
	frequencybodyaccelerationjerk bandsenergy   57,64
fBodyAccJerk-bandsEnergy()-1,16		
	frequencybodyaccelerationjerk bandsenergy   1,16
fBodyAccJerk-bandsEnergy()-17,32	
	frequencybodyaccelerationjerk bandsenergy   17,32
fBodyAccJerk-bandsEnergy()-33,48	
	frequencybodyaccelerationjerk bandsenergy   33,48
fBodyAccJerk-bandsEnergy()-49,64	
	frequencybodyaccelerationjerk bandsenergy   49,64
fBodyAccJerk-bandsEnergy()-1,24	
	frequencybodyaccelerationjerk bandsenergy   1,24
fBodyAccJerk-bandsEnergy()-25,48	
	frequencybodyaccelerationjerk bandsenergy   25,48
fBodyGyro-mean()-X	
	frequencybodygyro mean   x
fBodyGyro-mean()-Y	
	frequencybodygyro mean   y
fBodyGyro-mean()-Z	
	frequencybodygyro mean   z
fBodyGyro-std()-X	
	frequencybodygyro standarddeviation   x
fBodyGyro-std()-Y	
	frequencybodygyro standarddeviation   y
fBodyGyro-std()-Z	
	frequencybodygyro standarddeviation   z
fBodyGyro-mad()-X	
	frequencybodygyro mad   x
fBodyGyro-mad()-Y	
	frequencybodygyro mad   y
fBodyGyro-mad()-Z	
	frequencybodygyro mad   z
fBodyGyro-max()-X	
	frequencybodygyro max   x
fBodyGyro-max()-Y	
	frequencybodygyro max   y
fBodyGyro-max()-Z	
	frequencybodygyro max   z
fBodyGyro-min()-X	
	frequencybodygyro min   x
fBodyGyro-min()-Y	
	frequencybodygyro min   y
fBodyGyro-min()-Z	
	frequencybodygyro min   z
fBodyGyro-sma()	
	frequencybodygyro sma  
fBodyGyro-energy()-X	f
	requencybodygyro energy   x
fBodyGyro-energy()-Y	
	frequencybodygyro energy   y
fBodyGyro-energy()-Z	
	frequencybodygyro energy   z
fBodyGyro-iqr()-X	
	frequencybodygyro iqr   x
fBodyGyro-iqr()-Y	
	frequencybodygyro iqr   y
fBodyGyro-iqr()-Z	
	frequencybodygyro iqr   z
fBodyGyro-entropy()-X	
	frequencybodygyro entropy   x
fBodyGyro-entropy()-Y	
	frequencybodygyro entropy   y
fBodyGyro-entropy()-Z	
	frequencybodygyro entropy   z
fBodyGyro-maxInds-X	
	frequencybodygyro maxinds x
fBodyGyro-maxInds-Y	
	frequencybodygyro maxinds y
fBodyGyro-maxInds-Z	
	frequencybodygyro maxinds z
fBodyGyro-meanFreq()-X	
	frequencybodygyro meanfreq   x
fBodyGyro-meanFreq()-Y	
	frequencybodygyro meanfreq   y
fBodyGyro-meanFreq()-Z	
	frequencybodygyro meanfreq   z
fBodyGyro-skewness()-X	
	frequencybodygyro skewness   x
fBodyGyro-kurtosis()-X	
	frequencybodygyro kurtosis   x
fBodyGyro-skewness()-Y	
	frequencybodygyro skewness   y
fBodyGyro-kurtosis()-Y	
	frequencybodygyro kurtosis   y
fBodyGyro-skewness()-Z	
	frequencybodygyro skewness   z
fBodyGyro-kurtosis()-Z	
	frequencybodygyro kurtosis   z
fBodyGyro-bandsEnergy()-1,8	
	frequencybodygyro bandsenergy   1,8
fBodyGyro-bandsEnergy()-9,16	
	frequencybodygyro bandsenergy   9,16
fBodyGyro-bandsEnergy()-17,24	
	frequencybodygyro bandsenergy   17,24
fBodyGyro-bandsEnergy()-25,32	
	frequencybodygyro bandsenergy   25,32
fBodyGyro-bandsEnergy()-33,40	
	frequencybodygyro bandsenergy   33,40
fBodyGyro-bandsEnergy()-41,48	
	frequencybodygyro bandsenergy   41,48
fBodyGyro-bandsEnergy()-49,56		
	frequencybodygyro bandsenergy   49,56
fBodyGyro-bandsEnergy()-57,64	
	frequencybodygyro bandsenergy   57,64
fBodyGyro-bandsEnergy()-1,16	
	frequencybodygyro bandsenergy   1,16
fBodyGyro-bandsEnergy()-17,32	
	frequencybodygyro bandsenergy   17,32
fBodyGyro-bandsEnergy()-33,48	
	frequencybodygyro bandsenergy   33,48
fBodyGyro-bandsEnergy()-49,64	
	frequencybodygyro bandsenergy   49,64
fBodyGyro-bandsEnergy()-1,24	
	frequencybodygyro bandsenergy   1,24
fBodyGyro-bandsEnergy()-25,48	
	frequencybodygyro bandsenergy   25,48
fBodyGyro-bandsEnergy()-1,8	
	frequencybodygyro bandsenergy   1,8
fBodyGyro-bandsEnergy()-9,16	
	frequencybodygyro bandsenergy   9,16
fBodyGyro-bandsEnergy()-17,24	
	frequencybodygyro bandsenergy   17,24
fBodyGyro-bandsEnergy()-25,32	
	frequencybodygyro bandsenergy   25,32
fBodyGyro-bandsEnergy()-33,40	
	frequencybodygyro bandsenergy   33,40
fBodyGyro-bandsEnergy()-41,48	
	frequencybodygyro bandsenergy   41,48
fBodyGyro-bandsEnergy()-49,56	
	frequencybodygyro bandsenergy   49,56
fBodyGyro-bandsEnergy()-57,64	
	frequencybodygyro bandsenergy   57,64
fBodyGyro-bandsEnergy()-1,16		
	frequencybodygyro bandsenergy   1,16
fBodyGyro-bandsEnergy()-17,32	
	frequencybodygyro bandsenergy   17,32
fBodyGyro-bandsEnergy()-33,48	
	frequencybodygyro bandsenergy   33,48
fBodyGyro-bandsEnergy()-49,64	
	frequencybodygyro bandsenergy   49,64
fBodyGyro-bandsEnergy()-1,24	
	frequencybodygyro bandsenergy   1,24
fBodyGyro-bandsEnergy()-25,48	
	frequencybodygyro bandsenergy   25,48
fBodyGyro-bandsEnergy()-1,8	
	frequencybodygyro bandsenergy   1,8
fBodyGyro-bandsEnergy()-9,16	
	frequencybodygyro bandsenergy   9,16
fBodyGyro-bandsEnergy()-17,24	
	frequencybodygyro bandsenergy   17,24
fBodyGyro-bandsEnergy()-25,32	
	frequencybodygyro bandsenergy   25,32
fBodyGyro-bandsEnergy()-33,40	
	frequencybodygyro bandsenergy   33,40
fBodyGyro-bandsEnergy()-41,48	
	frequencybodygyro bandsenergy   41,48
fBodyGyro-bandsEnergy()-49,56		
	frequencybodygyro bandsenergy   49,56
fBodyGyro-bandsEnergy()-57,64	
	frequencybodygyro bandsenergy   57,64
fBodyGyro-bandsEnergy()-1,16	
	frequencybodygyro bandsenergy   1,16
fBodyGyro-bandsEnergy()-17,32	
	frequencybodygyro bandsenergy   17,32
fBodyGyro-bandsEnergy()-33,48		
frequencybodygyro bandsenergy   33,48
fBodyGyro-bandsEnergy()-49,64	
	frequencybodygyro bandsenergy   49,64
fBodyGyro-bandsEnergy()-1,24		
frequencybodygyro bandsenergy   1,24
fBodyGyro-bandsEnergy()-25,48	
	frequencybodygyro bandsenergy   25,48
fBodyAccMag-mean()	
	frequencybodyaccelerationmagnitude mean  
fBodyAccMag-std()	
	frequencybodyaccelerationmagnitude standarddeviation  
fBodyAccMag-mad()	
	frequencybodyaccelerationmagnitude mad  
fBodyAccMag-max()	
	frequencybodyaccelerationmagnitude max  
fBodyAccMag-min()	
	frequencybodyaccelerationmagnitude min  
fBodyAccMag-sma()	
	frequencybodyaccelerationmagnitude sma  
fBodyAccMag-energy()	
	frequencybodyaccelerationmagnitude energy  
fBodyAccMag-iqr()	
	frequencybodyaccelerationmagnitude iqr  
fBodyAccMag-entropy()	
	frequencybodyaccelerationmagnitude entropy  
fBodyAccMag-maxInds	
	frequencybodyaccelerationmagnitude maxinds
fBodyAccMag-meanFreq()	
	frequencybodyaccelerationmagnitude meanfreq  
fBodyAccMag-skewness()	
	frequencybodyaccelerationmagnitude skewness  
fBodyAccMag-kurtosis()	
	frequencybodyaccelerationmagnitude kurtosis  
fBodyBodyAccJerkMag-mean()	
	frequencybodybodyaccelerationjerkmagnitude mean  
fBodyBodyAccJerkMag-std()	
	frequencybodybodyaccelerationjerkmagnitude standarddeviation  
fBodyBodyAccJerkMag-mad()	
	frequencybodybodyaccelerationjerkmagnitude mad  
fBodyBodyAccJerkMag-max()	
	frequencybodybodyaccelerationjerkmagnitude max  
fBodyBodyAccJerkMag-min()	
	frequencybodybodyaccelerationjerkmagnitude min  
fBodyBodyAccJerkMag-sma()	
	frequencybodybodyaccelerationjerkmagnitude sma  
fBodyBodyAccJerkMag-energy()	
	frequencybodybodyaccelerationjerkmagnitude energy  
fBodyBodyAccJerkMag-iqr()	
	frequencybodybodyaccelerationjerkmagnitude iqr  
fBodyBodyAccJerkMag-entropy()	
	frequencybodybodyaccelerationjerkmagnitude entropy  
fBodyBodyAccJerkMag-maxInds	
	frequencybodybodyaccelerationjerkmagnitude maxinds
fBodyBodyAccJerkMag-meanFreq()	
	frequencybodybodyaccelerationjerkmagnitude meanfreq  
fBodyBodyAccJerkMag-skewness()
		frequencybodybodyaccelerationjerkmagnitude skewness  
fBodyBodyAccJerkMag-kurtosis()
		frequencybodybodyaccelerationjerkmagnitude kurtosis  
fBodyBodyGyroMag-mean()	
	frequencybodybodygyromagnitude mean  
fBodyBodyGyroMag-std()	
	frequencybodybodygyromagnitude standarddeviation  
fBodyBodyGyroMag-mad()	
	frequencybodybodygyromagnitude mad  
fBodyBodyGyroMag-max()	
	frequencybodybodygyromagnitude max  
fBodyBodyGyroMag-min()		
	frequencybodybodygyromagnitude min  
fBodyBodyGyroMag-sma()	f
	requencybodybodygyromagnitude sma  
fBodyBodyGyroMag-energy()	
	frequencybodybodygyromagnitude energy  
fBodyBodyGyroMag-iqr()	
	frequencybodybodygyromagnitude iqr  
fBodyBodyGyroMag-entropy()	
	frequencybodybodygyromagnitude entropy  
fBodyBodyGyroMag-maxInds	f
	requencybodybodygyromagnitude maxinds
fBodyBodyGyroMag-meanFreq()	
	frequencybodybodygyromagnitude meanfreq  
fBodyBodyGyroMag-skewness()	
	frequencybodybodygyromagnitude skewness  
fBodyBodyGyroMag-kurtosis()	
	frequencybodybodygyromagnitude kurtosis  
fBodyBodyGyroJerkMag-mean()	
	frequencybodybodygyrojerkmagnitude mean  
fBodyBodyGyroJerkMag-std()	
	frequencybodybodygyrojerkmagnitude standarddeviation  
fBodyBodyGyroJerkMag-mad()	
	frequencybodybodygyrojerkmagnitude mad  
fBodyBodyGyroJerkMag-max()	
	frequencybodybodygyrojerkmagnitude max  
fBodyBodyGyroJerkMag-min()	
	frequencybodybodygyrojerkmagnitude min  
fBodyBodyGyroJerkMag-sma()	
	frequencybodybodygyrojerkmagnitude sma  

fBodyBodyGyroJerkMag-energy()	
	frequencybodybodygyrojerkmagnitude energy  

fBodyBodyGyroJerkMag-iqr()	
	frequencybodybodygyrojerkmagnitude iqr  

fBodyBodyGyroJerkMag-entropy()	
	frequencybodybodygyrojerkmagnitude entropy  

fBodyBodyGyroJerkMag-maxInds	
	frequencybodybodygyrojerkmagnitude maxinds

fBodyBodyGyroJerkMag-meanFreq()	
	frequencybodybodygyrojerkmagnitude meanfreq  

fBodyBodyGyroJerkMag-skewness()	
	frequencybodybodygyrojerkmagnitude skewness  
fBodyBodyGyroJerkMag-kurtosis()	frequencybodybodygyrojerkmagnitude kurtosis  

angle(tBodyAccMean,gravity)	
	angle timebodyaccelerationmean,gravity 

angle(tBodyAccJerkMean),gravityMean)	
	angle timebodyaccelerationjerkmean ,gravitymean 

angle(tBodyGyroMean,gravityMean)	
	angle timebodygyromean,gravitymean 

angle(tBodyGyroJerkMean,gravityMean)	
	angle timebodygyrojerkmean,gravitymean 

angle(X,gravityMean)	
	angle x,gravitymean 

angle(Y,gravityMean)	
	angle y,gravitymean 

angle(Z,gravityMean)	
	angle z,gravitymean 
