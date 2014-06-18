<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1">1. Code Book of the data</a></li>
</ul>
</div>
</div>
# Code Book of the data

The data in the file `project_out.csv` contains 181 observations of 81
variables. The original data, provided by 

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

and the data in:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> 

has been processed as explained in the file `README.md` in order to
calculate de averages and standard deviation of the selected variables.

The variables are:

1.  **subject** Factor variable from 1 to 30 identifying the subject
    whose measures are in columns 3 to 81.

2.  **activity** Factor variable. One of the six activities that the
    study refers to: walking, walking up, walking down, sitting,
    standing or laying.

3.  **tXXXX.mean()-XYZ** Numeric variables of this form captures de
    average of the measurement, in time domain, as explained in the
    former reference. There are three measures, one for each X, Y and Z
    axis.The quantity represents the average value for the subject
    performing the activity.

4.  **tXXXX.std()-XYZ** Numeric variables of this form captures de
    standard deviation of the measurement, in time domain, as explained
    in the former reference. There are three measures, one for each X,
    Y and Z axis.The quantity represents the standard deviation value
    for the subject performing the activity.

5.  **fXXXX.mean()-XYZ** Numeric variables of this form captures de
    average of the measurement, in frequency domain, as explained in
    the former reference. There are three measures, one for each X, Y
    and Z axis.The quantity represents the average value for the
    subject performing the activity.

6.  **fXXXX.std()-XYZ** Numeric variables of this form captures de
    standard deviation of the measurement, in frequency domain, as
    explained in the former reference. There are three measures, one
    for each X, Y and Z axis.The quantity represents the standard
    deviation value for the subject performing the activity.
