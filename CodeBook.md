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

**The variable in Y can have the following values**         

1. WALKING                                                     
2. WALKING_UPSTAIRS             
3. WALKING_DOWNSTAIRS           
4. SITTING                      
5. STANDING
6. LAYING
**MergedY table**
|Y train |
|  -----:|
|  1     |
|    6   |
|   4    |
|**Y test**  |
|  1     |
|    6   |

 **The variable in Subject can have the following values**                        
1. Subject1             
2. Subject2           
4. Subject3                      
5. Subject4
6.  Subject5
(...)
SubjectN

**MergedSubject table**
|Subject train |
|        -----:|
|  1           |
|    6         |
|   4          |
|**Subject test**  |
|  1           |
|    6         |


**The variables in X** 

1- tBodyAcc-mean()-X

2- tBodyAcc-mean()-Y

3- tBodyAcc-mean()-Z

4- tBodyAcc-std()-X

5- tBodyAcc-std()-Y

6- tBodyAcc-std()-Z

41- tGravityAcc-mean()-X

42- tGravityAcc-mean()-Y

43- tGravityAcc-mean()-Z

44- tGravityAcc-std()-X

45- tGravityAcc-std()-Y

46- tGravityAcc-std()-Z

81- tBodyAccJerk-mean()-X

82- tBodyAccJerk-mean()-Y

83- tBodyAccJerk-mean()-Z

84- tBodyAccJerk-std()-X

85- tBodyAccJerk-std()-Y

86- tBodyAccJerk-std()-Z

121- tBodyGyro-mean()-X

122- tBodyGyro-mean()-Y

123- tBodyGyro-mean()-Z

124- tBodyGyro-std()-X

125- tBodyGyro-std()-Y

126- tBodyGyro-std()-Z

161- tBodyGyroJerk-mean()-X

162- tBodyGyroJerk-mean()-Y

163- tBodyGyroJerk-mean()-Z

164- tBodyGyroJerk-std()-X

165- tBodyGyroJerk-std()-Y

201- tBodyAccMag-mean()

202- tBodyAccMag-std()

214- tGravityAccMag-mean()

215- tGravityAccMag-std()

227- tBodyAccJerkMag-mean()

228- tBodyAccJerkMag-std()

240- tBodyGyroMag-mean()

241- tBodyGyroMag-std()

253- tBodyGyroJerkMag-mean()

254- tBodyGyroJerkMag-std()

266- fBodyAcc-mean()-X

267- fBodyAcc-mean()-Y

268- fBodyAcc-mean()-Z

269- fBodyAcc-std()-X
270- fBodyAcc-std()-Y

271- fBodyAcc-std()-Z

294- fBodyAcc-meanFreq()-X
295- fBodyAcc-meanFreq()-Y

296- fBodyAcc-meanFreq()-Z

345- fBodyAccJerk-mean()-X

346- fBodyAccJerk-mean()-Y

347- fBodyAccJerk-mean()-Z

348- fBodyAccJerk-std()-X

349- fBodyAccJerk-std()-Y

350- fBodyAccJerk-std()-Z

373- fBodyAccJerk-meanFreq()-X

374- fBodyAccJerk-meanFreq()-Y

375- fBodyAccJerk-meanFreq()-Z

424- fBodyGyro-mean()-X

425- fBodyGyro-mean()-Y

426- fBodyGyro-mean()-Z

427- fBodyGyro-std()-X

428- fBodyGyro-std()-Y

429- fBodyGyro-std()-Z

452- fBodyGyro-meanFreq()-X

453- fBodyGyro-meanFreq()-Y

454- fBodyGyro-meanFreq()-Z

503- fBodyAccMag-mean()

504- fBodyAccMag-std()

513- fBodyAccMag-meanFreq()

516 fBodyBodyAccJerkMag-mean()

517- fBodyBodyAccJerkMag-std()

526- fBodyBodyAccJerkMag-meanFreq()

529- fBodyBodyGyroMag-mean()

530- fBodyBodyGyroMag-std()

539- fBodyBodyGyroMag-meanFreq()

542- fBodyBodyGyroJerkMag-mean()

543- fBodyBodyGyroJerkMag-std()

552- fBodyBodyGyroJerkMag-meanFreq()

555- angle(tBodyAccMean,gravity)

556- angle(tBodyAccJerkMean),gravityMean)

557- angle(tBodyGyroMean,gravityMean)

559- angle(X,gravityMean)

560-angle(Y,gravityMean)

561- angle(Z,gravityMean)

**MergedX table**

**|X_Train|**
| 1             | 2    | 3    |  4   | 5    | 6    | 7    | 6   | ...  | 561  |
|  :-----:      |:---: |:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|
|-4.6622295e-001|      |      |      |      |      |      |      |      |      |
|-8.6622295e-001|      |      |      |      |      |      |      |      |      |
|-9.6622295e-001|      |      |      |      |      |      |       |     |      |


**|X_Test                                                                      |**
| 1             | 2    | 3    |  4   | 5    | 6    | 7    | 6    | ...  | 561  |
|  :-----:      |:---: |:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|
|-4.6622295e-001|      |      |      |      |      |      |      |      |      |
|-8.6622295e-001|      |      |      |      |      |      |      |      |      |
|-9.6622295e-001|      |      |      |      |      |      |       |     |      |


<H3>The Tidy DataSet 2 </H3>

In this dataset the tables of Dataset1 were merged by its columns into a single big table(Dataset2),and  then reshaped by activity and subject, calculating the mean for the other varibles .


**Dataset2 before reshape**                                                                  
| Activity |   Subject| 1       |2    | 3    |  4   | 5    | 6    | 7    | 8    | ...  | 561  |
|  :-----: |  :-----: |:---:    |:----:|:----:|:----:|:----:|:----:|:----:|:----:|:----:|:---:|

