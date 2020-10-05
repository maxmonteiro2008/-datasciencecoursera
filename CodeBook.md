<H1>Getting and Cleaning Data Course Project</H1>

<H2>The code book </H2>

<H3>The Project</H3>
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

<H3>The Original Data Overview</H3>

The original dataset is the typical Machine learning repository.The data is divided into Training and test sets.The X (files) are features, whereas the Y(files) are labels.We have 561 different features(variables) into a X(train/test file), and 1 variable into a Y(train/test file).

**The variable in Y can have the following values** 

1. WALKING                           
2. WALKING_UPSTAIRS             
3. WALKING_DOWNSTAIRS           
4. SITTING                      
5. STANDING
6. LAYING

|Y      |
| -----:|
| 1     |
|   6   |
|   4   |

**The variables in X** 

1. tBodyAcc-mean()-X
2. tBodyAcc-mean()-Y
3. tBodyAcc-mean()-Z
4. tBodyAcc-std()-X
5. tBodyAcc-std()-Y
6. tBodyAcc-std()-Z
7. tBodyAcc-mad()-X
8. tBodyAcc-mad()-Y
  
(...)

561-angle(Z,gravityMean)<br>



**X_Table**                                                                  
| 1             | 2    | 3    |  4   | 5    | 6    | 7    | 8    | ...  | 561  |
|  :-----:      |:---: |:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|
|-4.6622295e-001|      |      |      |      |      |      |      |      |      |
|-8.6622295e-001|      |      |      |      |      |      |      |      |      |
|-9.6622295e-001|      |      |      |      |      |      |       |     |      |


<H3>The Tidy DataSet 1 </H3>

The original datasetX(train/test file)and Y(train/test file) had its training and test data merged into two tables: merged_X and merged_Y.As Train and test have a differen number of rows(obsevations).The data(train/test) was merged horizontally, matching the columns(variables), as ilustraded bellow. For the features (merged_X) this dataset 1 only extracted the measurements on the mean and standard deviation for each observetion. 

**The final values in variable in Y (activity) **         

WALKING                                                     
WALKING_UPSTAIRS             
WALKING_DOWNSTAIRS           
SITTING                      
STANDING
LAYING


**Te Merged Y data**
|Y train |
|  -----:|
| WALKING|
|   LAYING   |
|   SITTING |
|**Y test**  |
|  WALKING     |
|   SITTING   |

**Te final Activity Column into DataSet1**
|Activity |
|  -----: |
| WALKING |
|LAYING   |
| SITTING |
|WALKING  |
|SITTING  |

 **The values in Subject  set can have the following values**                        
1. Subject1             
2. Subject2           
4. Subject3                      
5. Subject4
6.  Subject5

(...)

Subject30

**MergedSubject set**
|Subject train |
|        -----:|
|  1           |
|    6         |
|   4          |
|**Subject test**  |
|  1           |
|    6         |


**Te final Subject Column in DataSet1**
|Subject  |
| -----:  |
|     1   |
|     21  |
|       5 |
|      12 |
|      9  |

**The Final  features variables** 

* timeBodyAccelerometer-mean()-X {unit.:average(m/s2) in x direction at time domain}

* timeBodyAccelerometer-mean()-Y {unit.: average(m/s2) in y directionat time domain}

* timeBodyAccelerometer-mean()-Z {unit.: average(m/s2) in z direction at time domain}

* timeBodyAccelerometer-std()-X {unit.:standard deviation (m/s2) in x direction at time domain}

* timeBodyAccelerometer-std()-Y {unit.:standard deviation (m/s2) in y direction at time domain}

* timeBodyAccelerometer-std()-Z {unit.:standard deviation (m/s2) in z direction at time domain}

* timeGravityAccelerometer-mean()-X {unit.:average(g) in x direction at time domain}

* timeGravityAccelerometer-mean()-Y {unit.: average(g) in y direction at time domain}

* timeGravityAccelerometer-mean()-Z {unit.: average(g) in z direction at time domain}

* timeGravityAccelerometer-std()-X {unit.:standard deviation (g) in x direction at time domain}

* timeGravityAccelerometer-std()-Y {unit.:standard deviation (g) in y direction at time domain}

* timeGravityAccelerometer-std()-Z {unit.:standard deviation (g) in z direction at time domain}

* timeBodyAccelerometerJerk-mean()-X {unit.: average(m/s2) in x direction at time domain (no pre processement}

* timeBodyAccelerometerJerk-mean()-Y {unit.: average(m/s2) in y direction at time domain (no pre processement}

*timeBodyAccelerometerJerk-mean()-Z {unit.: average(m/s2) in z direction at time domain (no pre processement}

*timeBodyAccelerometerJerk-std()-X {unit.: standard deviation(m/s2) in x direction at time domain (no pre processement}

* timeBodyAccelerometerJerk-std()-Y {unit.: standard deviation(m/s2) in y direction at time domain (no pre processement}

* timeBodyAccelerometerJerk-std()-Z {unit.: standard deviation(m/s2) in z direction at time domain (no pre processement}

* timeBodyGyroscope-mean()-X  {unit.:average (rps) in x direction at time domain}


* timeBodyGyroscope-mean()-Y  {unit.:average (rps) in y direction at time domain}

* timeBodyGyroscope-mean()-Z {unit.:average (rps) in z direction at time domain}

* timeBodyGyroscope-std()-X {unit.:standard deviation (rps) in x direction at time domain}

* timeBodyGyroscope-std()-Y  {unit.:standard deviation (rps) in y direction at time domain}

* timeBodyGyroscope-std()-Z   {unit.:standard deviation (rps) in z  direction at time domain}

* timeBodyGyroscopeJerk-mean()-X  {unit.: average(m/s2) in x direction at time domain (no pre processement}

* timeBodyGyroscopeJerk-mean()-Y   {unit.: average(m/s2) in y direction at time domain (no pre processement}

* timeBodyGyroscopeJerk-mean()-Z  {unit.: average(m/s2) in z direction at time domain (no pre processement}

* timeBodyGyroscopeJerk-std()-X

* timeBodyGyroscopeJerk-std()-Y

* timeBodyGyroscopeJerk-std()-Z

* timeBodyAccelerometerMagnitude-mean() 

* timeBodyAccelerometerMagnitude-std()

* timeGravityAccelerometerMagnitude-mean()

* timeGravityAccelerometerMagnitude-std()

* timeBodyAccelerometerJerkMagnitude-mean()

* timeBodyAccelerometerJerkMagnitude-std()

* timeBodyGyroscopeMagnitude-mean()

* timeBodyGyroscopeMagnitude-std()

* timeBodyGyroscopeJerkMagnitude-mean()

* timeBodyGyroscopeJerkMagnitude-std()

* frequencyBodyAccelerometer-mean()-X

* frequencyBodyAccelerometer-mean()-Y

* frequencyBodyAccelerometer-mean()-Z

* frequencyBodyAccelerometer-std()-X


* frequencyBodyAccelerometer-std()-Y

* frequencyBodyAccelerometer-std()-Z

* frequencyBodyAccelerometer-meanFreq()-X

* frequencyBodyAccelerometer-meanFreq()-Y

* frequencyBodyAccelerometer-meanFreq()-Z

* frequencyBodyAccelerometerJerk-mean()-X

* frequencyBodyAccelerometerJerk-mean()-Y

* frequencyBodyAccelerometerJerk-mean()-Z

* frequencyBodyAccelerometerJerk-std()-X

* frequencyBodyAccelerometerJerk-std()-Y

* frequencyBodyAccelerometerJerk-std()-Z

* frequencyBodyAccelerometerJerk-meanFreq()-X

* frequencyBodyAccelerometerJerk-meanFreq()-Y

* frequencyBodyAccelerometerJerk-meanFreq()-Z

* frequencyBodyGyroscope-mean()-X

* frequencyBodyGyroscope-mean()-Y

* frequencyBodyGyroscope-mean()-Z

* frequencyBodyGyroscope-std()-X

* frequencyBodyGyroscope-std()-Y


* frequencyBodyGyroscope-std()-Z

* frequencyBodyGyroscope-meanFreq()-X

* frequencyBodyGyroscope-meanFreq()-Y

* frequencyBodyGyroscope-meanFreq()-Z

* frequencyBodyAccelerometerMagnitude-mean()

* frequencyBodyAccelerometerMagnitude-std()

* frequencyBodyAccelerometerMagnitude-meanFreq()

* frequencyBodyAccelerometerJerkMagnitude-mean()

* frequencyBodyAccelerometerJerkMagnitude-std()

* frequencyBodyAccelerometerJerkMagnitude-meanFreq()

* frequencyBodyGyroscopeMagnitude-mean()

* frequencyBodyGyroscopeMagnitude-std()

* frequencyBodyGyroscopeMagnitude-meanFreq() 

* frequencyBodyGyroscopeJerkMagnitude-mean() 

* frequencyBodyGyroscopeJerkMagnitude-std() 

* frequencyBodyGyroscopeJerkMagnitude-meanFreq()

* angle(tBodyAccelerometerMean,gravity)

* angle(tBodyAccelerometerJerkMean),gravityMean)

* angle(tBodyGyroscopeMean,gravityMean)

* angle(tBodyGyroscopeJerkMean,gravityMean)

* angle(X,gravityMean) angle(Y,gravityMean)

* angle(Z,gravityMean)



<h4>The  FinalDataSet 1 (after requirements STEP4)</h4> 


| Activity | Subject | timeBodyAccelerometer-mean()-X | timeBodyAccelerometer-mean()-Y | timeBodyAccelerometer-mean()-Z | timeBodyAccelerometer-std()-X | timeBodyAccelerometer-std()-Y | ... | angle(Z,gravityMean) |
|----------|---------|--------------------------------|--------------------------------|--------------------------------|-------------------------------|-------------------------------|-----|----------------------|
| STANDING | 23      | -0.020294171                   |                                |                                |                               | -0.99093631                   |     | -0.98755418          |
| SITTING  | 6       | 0.0061008489                   | -0.99093631                    | -0.020294171                   | -0.99093631                   |                               |     |                      |
| LAYING   | 30      |                                | 0.0061008489                   |                                |                               |                               |     |                      |



<H3>The Tidy DataSet 2 </H3>

This dataset was obtained from Dataset1, grouping Activity and Subject, and sumarizingthe  average for each X variable.


**Dataset2 before reshape** 

| Activity | Subject | timeBodyAccelerometer-mean()-X_ mean() | timeBodyAccelerometer-mean()-Y_mean() | timeBodyAccelerometer-mean()-Z_mean() | timeBodyAccelerometer-std()-X_mean() | timeBodyAccelerometer-std()-Y_mean() | ... | angle(Z,gravityMean)_mean() |
|----------|---------|----------------------------------------|---------------------------------------|---------------------------------------|--------------------------------------|--------------------------------------|-----|-----------------------------|
| STANDING | 23      | -0.020294171                           |                                       |                                       |                                      | -0.99093631                          |     | -0.98755418                 |
| SITTING  | 6       | 0.0061008489                           | -0.99093631                           | -0.020294171                          | -0.99093631                          |                                      |     |                             |
| LAYING   | 30      |                                        | 0.0061008489                          |                                       |                                      |                                      |     |                             |

