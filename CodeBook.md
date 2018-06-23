## Project Description
The project purpose is to extract and tidy data collected from samsung sensor.

## Study design and data processing

### Collection of the raw data
The experiments have been carried out with a group of 30 volunteers wearing samsung smarphone with embedded accelerometer and gyroscope.</br> 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
Data have been collected during those different activities, then they have been pre-processed to provide following metrics : </br>
mean(): Mean value</br>
std(): Standard deviation</br>
mad(): Median absolute deviation </br>
max(): Largest value in array</br>
min(): Smallest value in array</br>
sma(): Signal magnitude area</br>
energy(): Energy measure. Sum of the squares divided by the number of values.</br>
iqr(): Interquartile range </br>
entropy(): Signal entropy</br>
arCoeff(): Autorregresion coefficients with Burg order equal to 4</br>
correlation(): correlation coefficient between two signals</br>
maxInds(): index of the frequency component with largest magnitude</br>
meanFreq(): Weighted average of the frequency components to obtain a mean frequency</br>
skewness(): skewness of the frequency domain signal </br>
kurtosis(): kurtosis of the frequency domain signal </br>
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.</br>
angle(): Angle between to vectors.</br>


## Creating the tidy datafile

### Guide to create the tidy data file
Downlad data set and place the folder under your working directory
Download the script run_analysis and place in your working directory

### Cleaning of the data
The script is collecting test and training data set and assign them meaningfull variable names.
It is also collecting the subject identifier and the activities performed when data where collected.
The script merge the data into one data set then extract only the mean and standart deviation related information.
Then the script computes the mean of each metrics extracts with the following breakdown :</br>
- Subject
- Activity

## Description of the variables in the data file
Dataset kept only the folloing information :</br>
- Mean
- Standard Deviation

Mean of those metrics is performed for each activity and subject</br>
- lable_desc
- subject

### Activity lable
**WALKING</br>
- WALKING_UPSTAIRS</br>
- WALKING_DOWNSTAIRS</br>
- SITTING</br>
- STANDING</br>
- LAYING**</br>

### Variables (66 variables)
- tBodyAcc-mean()-X
- tBodyAcc-mean()-Y
- tBodyAcc-mean()-Z
- tBodyAcc-std()-X
- tBodyAcc-std()-Y
- tBodyAcc-std()-Z
- tGravityAcc-mean()-X
- tGravityAcc-mean()-Y
- tGravityAcc-mean()-Z
- tGravityAcc-std()-X
- tGravityAcc-std()-Y
- tGravityAcc-std()-Z
- tBodyAccJerk-mean()-X
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z
- tBodyAccJerk-std()-X
- tBodyAccJerk-std()-Y
- tBodyAccJerk-std()-Z
- tBodyGyro-mean()-X
- tBodyGyro-mean()-Y
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X
- tBodyGyro-std()-Y
- tBodyGyro-std()-Z
- tBodyGyroJerk-mean()-X
- tBodyGyroJerk-mean()-Y
- tBodyGyroJerk-mean()-Z
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y
- tBodyGyroJerk-std()-Z
- tBodyAccMag-mean()
- tBodyAccMag-std()
- tGravityAccMag-mean()
- tGravityAccMag-std()
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std()
- tBodyGyroMag-mean()
- tBodyGyroMag-std()
- tBodyGyroJerkMag-mean()
- tBodyGyroJerkMag-std()
- fBodyAcc-mean()-X
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z
- fBodyAcc-std()-X
- fBodyAcc-std()-Y
- fBodyAcc-std()-Z
- fBodyAccJerk-mean()-X
- fBodyAccJerk-mean()-Y
- fBodyAccJerk-mean()-Z
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y
- fBodyAccJerk-std()-Z
- fBodyGyro-mean()-X
- fBodyGyro-mean()-Y
- fBodyGyro-mean()-Z
- fBodyGyro-std()-X
- fBodyGyro-std()-Y
- fBodyGyro-std()-Z
- fBodyAccMag-mean()
- fBodyAccMag-std()
- fBodyBodyAccJerkMag-mean()
- fBodyBodyAccJerkMag-std()
- fBodyBodyGyroMag-mean()
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean()
- fBodyBodyGyroJerkMag-std()

