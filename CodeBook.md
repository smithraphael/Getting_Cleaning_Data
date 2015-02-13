# Code Book

Data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

# Sampling fields

1	Subject
2	Activity_Name
3	Activity_id
4	tBodyAcc_Mean_X
5	tBodyAcc_Mean_Y
6	tBodyAcc_Mean_Z
7	tGravityAcc_Mean_X
8	tGravityAcc_Mean_Y
9	tGravityAcc_Mean_Z
10	tBodyAccJerk_Mean_X
11	tBodyAccJerk_Mean_Y
12	tBodyAccJerk_Mean_Z
13	tBodyGyro_Mean_X
14	tBodyGyro_Mean_Y
15	tBodyGyro_Mean_Z
16	tBodyGyroJerk_Mean_X
17	tBodyGyroJerk_Mean_Y
18	tBodyGyroJerk_Mean_Z
19	tBodyAccMag_Mean
20	tGravityAccMag_Mean
21	tBodyAccJerkMag_Mean
22	tBodyGyroMag_Mean
23	tBodyGyroJerkMag_Mean
24	fBodyAcc_Mean_X
25	fBodyAcc_Mean_Y
26	fBodyAcc_Mean_Z
27	fBodyAcc_meanFreq()_X
28	fBodyAcc_meanFreq()_Y
29	fBodyAcc_meanFreq()_Z
30	fBodyAccJerk_Mean_X
31	fBodyAccJerk_Mean_Y
32	fBodyAccJerk_Mean_Z
33	fBodyAccJerk_meanFreq()_X
34	fBodyAccJerk_meanFreq()_Y
35	fBodyAccJerk_meanFreq()_Z
36	fBodyGyro_Mean_X
37	fBodyGyro_Mean_Y
38	fBodyGyro_Mean_Z
39	fBodyGyro_meanFreq()_X
40	fBodyGyro_meanFreq()_Y
41	fBodyGyro_meanFreq()_Z
42	fBodyAccMag_Mean
43	fBodyAccMag_meanFreq()
44	fBodyBodyAccJerkMag_Mean
45	fBodyBodyAccJerkMag_meanFreq()
46	fBodyBodyGyroMag_Mean
47	fBodyBodyGyroMag_meanFreq()
48	fBodyBodyGyroJerkMag_Mean
49	fBodyBodyGyroJerkMag_meanFreq()
50	angle(tBodyAccMean,gravity)
51	angle(tBodyAccJerkMean),gravityMean)
52	angle(tBodyGyroMean,gravityMean)
53	angle(tBodyGyroJerkMean,gravityMean)
54	angle(X,gravityMean)
55	angle(Y,gravityMean)
56	angle(Z,gravityMean)
57	tBodyAcc_Standard_Deviation_X
58	tBodyAcc_Standard_Deviation_Y
59	tBodyAcc_Standard_Deviation_Z
60	tGravityAcc_Standard_Deviation_X
61	tGravityAcc_Standard_Deviation_Y
62	tGravityAcc_Standard_Deviation_Z
63	tBodyAccJerk_Standard_Deviation_X
64	tBodyAccJerk_Standard_Deviation_Y
65	tBodyAccJerk_Standard_Deviation_Z
66	tBodyGyro_Standard_Deviation_X
67	tBodyGyro_Standard_Deviation_Y
68	tBodyGyro_Standard_Deviation_Z
69	tBodyGyroJerk_Standard_Deviation_X
70	tBodyGyroJerk_Standard_Deviation_Y
71	tBodyGyroJerk_Standard_Deviation_Z
72	tBodyAccMag_Standard_Deviation
73	tGravityAccMag_Standard_Deviation
74	tBodyAccJerkMag_Standard_Deviation
75	tBodyGyroMag_Standard_Deviation
76	tBodyGyroJerkMag_Standard_Deviation
77	fBodyAcc_Standard_Deviation_X
78	fBodyAcc_Standard_Deviation_Y
79	fBodyAcc_Standard_Deviation_Z
80	fBodyAccJerk_Standard_Deviation_X
81	fBodyAccJerk_Standard_Deviation_Y
82	fBodyAccJerk_Standard_Deviation_Z
83	fBodyGyro_Standard_Deviation_X
84	fBodyGyro_Standard_Deviation_Y
85	fBodyGyro_Standard_Deviation_Z
86	fBodyAccMag_Standard_Deviation
87	fBodyBodyAccJerkMag_Standard_Deviation
88	fBodyBodyGyroMag_Standard_Deviation
89	fBodyBodyGyroJerkMag_Standard_Deviation

# Types of calculations

mean: Mean value
Standard_Deviation: Standard deviation value
meanFreq: Frequency Mean
