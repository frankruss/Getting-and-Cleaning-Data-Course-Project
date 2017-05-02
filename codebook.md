## Code Book

Prepared by Frank Russolello
for the Getting and Cleaning Data Project

## Source data

Source data used comes from Human Activity Recognition Using Smartphones Dataset Version 1.0
by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

For more information about the source data contact: activityrecognition@smartlab.ws


## Tidy data

This remainder of this code book summarizes the derived data in tidy.txt.


## ID Columns

* activity - type of activity performed when the corresponding measurements were taken

* subject - ID of the test subject


## Activity Definitions

* WALKING: subject was walking during the test
* WALKING_UPSTAIRS: subject was walking upstairs during the test
* WALKING_DOWNSTAIRS: subject was walking downstairs during the test
* SITTING: subject was sitting during the test
* STANDING: subject was standing during the test
* LAYING: subject was laying down during the test


## Derivation of data

* Test and training data was merged
* Columns names were updated to ensure uniqueness
* Measurements were selected that were identified as mean and standard deviation
* Data was grouped by activity and subject 
* Average of each variable was calculated

## Tidy file variables

* "activity"                            
* "subject"  
* "tBodyAcc-mean()-X 1"                 
* "tBodyAcc-mean()-Y 2"                
* "tBodyAcc-mean()-Z 3"             
* "tBodyAcc-std()-X 4"                 
* "tBodyAcc-std()-Y 5"               
* "tBodyAcc-std()-Z 6"                 
* "tGravityAcc-mean()-X 41"     
* "tGravityAcc-mean()-Y 42"            
* "tGravityAcc-mean()-Z 43"     
* "tGravityAcc-std()-X 44"             
* "tGravityAcc-std()-Y 45"          
* "tGravityAcc-std()-Z 46"             
* "tBodyAccJerk-mean()-X 81"    
* "tBodyAccJerk-mean()-Y 82"           
* "tBodyAccJerk-mean()-Z 83"        
* "tBodyAccJerk-std()-X 84"            
* "tBodyAccJerk-std()-Y 85"       
* "tBodyAccJerk-std()-Z 86"            
* "tBodyGyro-mean()-X 121"        
* "tBodyGyro-mean()-Y 122"             
* "tBodyGyro-mean()-Z 123"        
* "tBodyGyro-std()-X 124"              
* "tBodyGyro-std()-Y 125"             
* "tBodyGyro-std()-Z 126"              
* "tBodyGyroJerk-mean()-X 161"      
* "tBodyGyroJerk-mean()-Y 162"         
* "tBodyGyroJerk-mean()-Z 163"      
* "tBodyGyroJerk-std()-X 164"          
* "tBodyGyroJerk-std()-Y 165"         
* "tBodyGyroJerk-std()-Z 166"          
* "tBodyAccMag-mean() 201"          
* "tBodyAccMag-std() 202"              
* "tGravityAccMag-mean() 214"         
* "tGravityAccMag-std() 215"           
* "tBodyAccJerkMag-mean() 227"      
* "tBodyAccJerkMag-std() 228"          
* "tBodyGyroMag-mean() 240"         
* "tBodyGyroMag-std() 241"             
* "tBodyGyroJerkMag-mean() 253"     
* "tBodyGyroJerkMag-std() 254"         
* "fBodyAcc-mean()-X 266"             
* "fBodyAcc-mean()-Y 267"              
* "fBodyAcc-mean()-Z 268"           
* "fBodyAcc-std()-X 269"               
* "fBodyAcc-std()-Y 270"              
* "fBodyAcc-std()-Z 271"               
* "fBodyAcc-meanFreq()-X 294"           
* "fBodyAcc-meanFreq()-Y 295"          
* "fBodyAcc-meanFreq()-Z 296"         
* "fBodyAccJerk-mean()-X 345"          
* "fBodyAccJerk-mean()-Y 346"           
* "fBodyAccJerk-mean()-Z 347"          
* "fBodyAccJerk-std()-X 348"          
* "fBodyAccJerk-std()-Y 349"           
* "fBodyAccJerk-std()-Z 350"            
* "fBodyAccJerk-meanFreq()-X 373"      
* "fBodyAccJerk-meanFreq()-Y 374"     
* "fBodyAccJerk-meanFreq()-Z 375"      
* "fBodyGyro-mean()-X 424"            
* "fBodyGyro-mean()-Y 425"             
* "fBodyGyro-mean()-Z 426"              
* "fBodyGyro-std()-X 427"              
* "fBodyGyro-std()-Y 428"             
* "fBodyGyro-std()-Z 429"              
* "fBodyGyro-meanFreq()-X 452"        
* "fBodyGyro-meanFreq()-Y 453"         
* "fBodyGyro-meanFreq()-Z 454"          
* "fBodyAccMag-mean() 503"             
* "fBodyAccMag-std() 504"             
* "fBodyAccMag-meanFreq() 513"         
* "fBodyBodyAccJerkMag-mean() 516"      
* "fBodyBodyAccJerkMag-std() 517"      
* "fBodyBodyAccJerkMag-meanFreq() 526"  
* "fBodyBodyGyroMag-mean() 529"        
* "fBodyBodyGyroMag-std() 530"          
* "fBodyBodyGyroMag-meanFreq() 539"    
* "fBodyBodyGyroJerkMag-mean() 542"     
* "fBodyBodyGyroJerkMag-std() 543"     
* "fBodyBodyGyroJerkMag-meanFreq() 552"

