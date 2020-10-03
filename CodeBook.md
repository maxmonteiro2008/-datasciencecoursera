<H1>Getting and Cleaning Data Course Project</H1>
***
<H2> The code book  </H2>

<h3>The Project</h3>
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

<h3>The Original Data Overview</h3>
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
9. tBodyAcc-mad()-Z
10. tBodyAcc-max()-X
.
.
.
561. angle(Z,gravityMean)


| 1    | 2    | 3    |  4   | 5    | 6    | 7    | 8    | ...  | 561  |
|-----:|-----:|-----:|-----:|-----:|-----:|-----:|-----:|-----:|-----:|
| 1    |
|   6  |
|   4  |
