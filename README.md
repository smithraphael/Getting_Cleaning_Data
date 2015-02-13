# Getting_Cleaning_Data

This repository contains:
- README.MD File: explain how the run_analysis.R script works
- CodeBook: explain variables
- run_analysis.R: R Script to generate tidy dataset
- tidy.txt: file generated only with necessary data

# About the script

Packages "reshape2" and data.table are required

Files used:
- X_train.txt
- y_train.txt
- subject_train.txt
- X_test.txt
- y_test.txt
- subject_test.txt
- features.txt

Step by step solution:

1st: read "train" and "test" files and merge into a dataframe (note that those files do not contain headers)
2nd:read "features" to assign column names
3rd: 

