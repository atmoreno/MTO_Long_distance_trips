# long-distance-trips

The objective of this part of the MTO project is to describe the long distance trip making on the Ontario province. 

Given a day, each individual can have four states: at home, long distance daytrip, long distance inbound travelling and long distance away. There are 3 main trip purposes: leisure, visit and business. Each trip purpose will be modelled separately, assuming that the individual are at home if they are engaged on a long trip for other trip purpose.

The data are from the TSRC for the Ontario province, years 2011 to 2013.

The repository contains the following files:

1- mlogit_summer_v1.R Commands in R to estimate the probability of choosing one of the options, depending on the trip purpose. The difference on the models for each trip purpose is how the variable "SEASON" is coded.

2- mlogit_gender.R Commands in R to estimate the difference on the probability of choosing one of the options, depending on the trip purpose depending on how the variable "GENDER" is coded.

3- Sample_data.csv: a sample of the database (only four individuals).
