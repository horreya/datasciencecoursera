#Codebook

##Readme
Details of the run_analysis.R script are available in [README.md](./README.md)

##Background
As explained by the original authors (Anguita et al 2013), the features selected for this database come from the accelerometer and gyroscope 3-axial raw signals of volunteers wearing smartphones that tracked their movement. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccelerometer-XYZ and tGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccelerometerJerk-XYZ and tBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerometerMagnitude, tGravityAccelerometerMagnitude, tBodyAccelerometerJerkMagnitude, tBodyGyroscopeMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccelerometer-XYZ, fBodyAccelerometerJerk-XYZ, fBodyGyroscope-XYZ, fBodyAccelerometerJerkMagnitude, fBodyGyroscopeMagnitude, fBodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

All variables are normalised and bounded within [-1,1]

While the original dataset provides several variables calculated from each of the signals, this one only includes mean and standard deviation for each measurement.

Variable names have changed slightly from the original variables to make them more descriptive.  Specifically:
* Illegal characters (parentheses and hyphens) were removed to ensure that variable names were permissible in R
* "Acc" was expaneded to "Accelerometer" in variable names
* "Gyro" was expanded to "Gyroscope" in variable names
* "Mag" was expanded to "Magnitude" in variable names
* The typo "BodyBody" was corrected to "Body"

## Variables

<table>
<tr><td>"Subject"</td><td> Identified one of thirty research subjects whose movements were measured</td></tr>
<tr><td>"Activity"</td><td> The type of activity carried out</td></tr>
<tr><td>"tBodyAccelerometer.mean.X"</td><td> Mean of time domain body accelerometer signals on the X axis</td></tr>
<tr><td>"tBodyAccelerometer.mean.Y"</td><td> Mean of time domain body accelerometer signals on the Y axis</td></tr>
<tr><td>"tBodyAccelerometer.mean.Z"</td><td> Mean of time domain body accelerometer signals on the Z axis</td></tr>
<tr><td>"tBodyAccelerometer.std.X"</td><td> Standard deviation of time domain body accelerometer signals on the X axis</td></tr>
<tr><td>"tBodyAccelerometer.std.Y"</td><td> Standard deviation of time domain body accelerometer signals on the Y axis</td></tr>
<tr><td>"tBodyAccelerometer.std.Z"</td><td> Standard deviation of time domain body accelerometer signals on the Z axis</td></tr>
<tr><td>"tGravityAccelerometer.mean.X"</td><td> Mean of time domain gravity accelerometer signals on the X axis</td></tr>
<tr><td>"tGravityAccelerometer.mean.Y"</td><td> Mean of time domain gravity accelerometer signals on the Y axis</td></tr>
<tr><td>"tGravityAccelerometer.mean.Z"</td><td> Mean of time domain gravity accelerometer signals on the Z axis</td></tr>
<tr><td>"tGravityAccelerometer.std.X"</td><td> Standard deviation of time domain gravity accelerometer signals on the X axis</td></tr>
<tr><td>"tGravityAccelerometer.std.Y"</td><td> Standard deviation of time domain gravity accelerometer signals on the Y axis</td></tr>
<tr><td>"tGravityAccelerometer.std.Z"</td><td> Standard deviation of time domain gravity accelerometer signals on the Z axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.mean.X"</td><td> Mean of time domain body jerk signals on the X axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.mean.Y"</td><td> Mean of time domain body jerk signals on the Y axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.mean.Z"</td><td> Mean of time domain body jerk signals on the Z axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.std.X"</td><td> Standard deviation of time domain body jerk signals on the X axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.std.Y"</td><td> Standard deviation of time domain body jerk signals on the Y axis</td></tr>
<tr><td>"tBodyAccelerometerJerk.std.Z"</td><td> Standard deviation of time domain body jerk signals on the Z axis</td></tr>
<tr><td>"tBodyGyroscope.mean.X"</td><td> Mean of time domain body gyroscope signals on the X axis</td></tr>
<tr><td>"tBodyGyroscope.mean.Y"</td><td> Mean of time domain body gyroscope signals on the Y axis</td></tr>
<tr><td>"tBodyGyroscope.mean.Z"</td><td> Mean of time domain body gyroscope signals on the Z axis</td></tr>
<tr><td>"tBodyGyroscope.std.X"</td><td> Standard deviation of time domain body gyroscope signals on the X axis</td></tr>
<tr><td>"tBodyGyroscope.std.Y"</td><td> Standard deviation of time domain body gyroscope signals on the Y axis</td></tr>
<tr><td>"tBodyGyroscope.std.Z"</td><td> Standard deviation of time domain body gyroscope signals on the Z axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.mean.X"</td><td> Mean of time domain body gyroscope jerk signals on the X axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.mean.Y"</td><td> Mean of time domain body gyroscope jerk signals on the X axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.mean.Z"</td><td> Mean of time domain body gyroscope jerk signals on the X axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.std.X"</td><td> Standard deviation of time domain body gyroscope jerk signals on the X axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.std.Y"</td><td> Standard deviation of time domain body gyroscope jerk signals on the Y axis</td></tr>
<tr><td>"tBodyGyroscopeJerk.std.Z"</td><td> Standard deviation of time domain body gyroscope jerk signals on the Z axis</td></tr>
<tr><td>"tBodyAccelerometerMagnitude.mean"</td><td> Mean magnitude of time domain body accelerometer signals</td></tr>
<tr><td>"tBodyAccelerometerMagnitude.std"</td><td> Standard deviation of magnitude of time domain body accelerometer signals</td></tr>
<tr><td>"tGravityAccelerometerMagnitude.mean"</td><td> Mean magnitude of time domain gravity accelerometer signals</td></tr>
<tr><td>"tGravityAccelerometerMagnitude.std"</td><td> Standard deviation of magnitude of time domain gravity accelerometer signals</td></tr>
<tr><td>"tBodyAccelerometerJerkMagnitude.mean"</td><td> Mean magnitude of time domain accelerometer jerk signals</td></tr>
<tr><td>"tBodyAccelerometerJerkMagnitude.std"</td><td> Standard deviation of magnitude of time domain jerk signals</td></tr>
<tr><td>"tBodyGyroscopeMagnitude.mean"</td><td> Mean magnitude of time domain gyroscope  signals</td></tr>
<tr><td>"tBodyGyroscopeMagnitude.std"</td><td> Standard deviation of magnitude of time domain gyroscope signals</td></tr>
<tr><td>"tBodyGyroscopeJerkMagnitude.mean"</td><td> Mean magnitude of time domain gyroscope jerk signals</td></tr>
<tr><td>"tBodyGyroscopeJerkMagnitude.std"</td><td> Standard deviation of magnitude of time domain gyroscope jerk signals</td></tr>
<tr><td>"fBodyAccelerometer.mean.X"</td><td> Mean of frequency domain body accelerometer signals on the X axis</td></tr>
<tr><td>"fBodyAccelerometer.mean.Y"</td><td> Mean of frequency domain body accelerometer signals on the Y axis</td></tr>
<tr><td>"fBodyAccelerometer.mean.Z"</td><td> Mean of frequency domain body accelerometer signals on the Z axis</td></tr>
<tr><td>"fBodyAccelerometer.std.X"</td><td> Standard deviation of frequency domain body accelerometer signals on the X axis</td></tr>
<tr><td>"fBodyAccelerometer.std.Y"</td><td> Standard deviation of frequency domain body accelerometer signals on the Y axis</td></tr>
<tr><td>"fBodyAccelerometer.std.Z"</td><td> Standard deviation of frequency domain body accelerometer signals on the Z axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.mean.X"</td><td> Mean of frequency domain body jerk signals on the X axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.mean.Y"</td><td> Mean of frequency domain body jerk signals on the Y axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.mean.Z"</td><td> Mean of frequency domain body jerk signals on the Z axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.std.X"</td><td> Standard deviation of frequency domain body jerk signals on the X axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.std.Y"</td><td> Standard deviation of frequency domain body jerk signals on the Y axis</td></tr>
<tr><td>"fBodyAccelerometerJerk.std.Z"</td><td> Standard deviation of frequency domain body jerk signals on the Z axis</td></tr>
<tr><td>"fBodyGyroscope.mean.X"</td><td> Mean of frequency domain body gyroscope signals on the X axis</td></tr>
<tr><td>"fBodyGyroscope.mean.Y"</td><td> Mean of frequency domain body gyroscope signals on the Y axis</td></tr>
<tr><td>"fBodyGyroscope.mean.Z"</td><td> Mean of frequency domain body gyroscope signals on the Z axis</td></tr>
<tr><td>"fBodyGyroscope.std.X"</td><td> Standard deviation of frequency domain body gyroscope signals on the X axis</td></tr>
<tr><td>"fBodyGyroscope.std.Y"</td><td> Standard deviation of frequency domain body gyroscope signals on the Y axis</td></tr>
<tr><td>"fBodyGyroscope.std.Z"</td><td> Standard deviation of frequency domain body gyroscope signals on the Z axis</td></tr>
<tr><td>"fBodyAccelerometerMagnitude.mean"</td><td> Mean magnitude of frequency domain gravity accelerometer signals</td></tr>
<tr><td>"fBodyAccelerometerMagnitude.std"</td><td> Standard deviation of magnitude of frequency domain gravity accelerometer signals</td></tr>
<tr><td>"fBodyAccelerometerJerkMagnitude.mean"</td><td> Mean magnitude of frequency domain accelerometer jerk  signals</td></tr>
<tr><td>"fBodyAccelerometerJerkMagnitude.std"</td><td> Standard deviation of magnitude of frequency domain accelerometer jerk signals</td></tr> 
<tr><td>"fBodyGyroscopeMagnitude.mean"</td><td> Mean magnitude of frequency domain gyroscope  signals</td></tr>
<tr><td>"fBodyGyroscopeMagnitude.std"</td><td> Standard deviation of magnitude of frequency domain gyroscope signals</td></tr>
<tr><td>"fBodyGyroscopeJerkMagnitude.mean"</td><td> Mean magnitude of frequency domain gyroscope jerk signals</td></tr>
<tr><td>"fBodyGyroscopeJerkMagnitude.std"</td><td> Standard deviation of magnitude of frequency domain gyroscope jerk signals</td></tr>

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 