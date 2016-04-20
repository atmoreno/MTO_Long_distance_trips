# long-distance-trips

Part of the STR project to evaluate long distance trips (more than 40 km) travel pattern in the Ontario province. 

The data are from the TSRC for the Ontario province, years 2011 to 2013.

The codes in R should be executed in this order:

1. mlogit_summer_v1.R. This code calculates the probability of being at home, traveling, away or on a daytrip. Each trip purpose (leisure, visit, business) is modelled separately. For each trip purpose, five different models are proposed based on how the variable SEASON is coded.
2. mlogit_gender.R. This code calculates the probability of being at home, traveling, away or on a daytrip for the business purpose. The difference on the models is how the variable GENDER is coded (0,1; -1,1; Male, Female; -1,1).
