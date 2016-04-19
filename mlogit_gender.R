# Database from Ontario
# Commands in R to calculate the probability of being at home/traveling/away/daytrip
# The difference among the models is how GENDER is coded 

#-------library-----------------------------
library("mlogit", lib.loc="C:/Users/AnaTsui/Documents/r/win-library/3.0")

#--------------------------------------------------------------
#--------BUSINESS trip purpose------------------------------------
#--------------------------------------------------------------

#all the sample (seasons are not distinguished)
bbdd<-read.csv("C:/Users/AnaTsui/Desktop/TUM/ONTARIO/3y_season/Ontario_3y_business.csv")
colnames(bbdd)
datos<- mlogit.data(bbdd, shape = "wide", choice = "Choice")

datos$Female4<-as.factor(datos$Female2)

#multinomial logit models for the probability of being at home/traveling/away/daytrip

modelo0<-mlogit(Choice~1 | Female,weights=expansionFactor,data=datos) #Dummy variable: Male 0, Female 1
modelo1<-mlogit(Choice~1 | Female2,weights=expansionFactor,data=datos) #Continuous variable: Male -1, Female 1
modelo2<-mlogit(Choice~1 | Female3,weights=expansionFactor,data=datos) #Discrete variable: Male, Female
modelo3<-mlogit(Choice~1 | Female4,weights=expansionFactor,data=datos) #Discrete variable: Male -1, Female 1

bbdd$pred0<-predict(modelo0,newdata=datos)
bbdd$pred1<-predict(modelo1,newdata=datos)
bbdd$pred2<-predict(modelo2,newdata=datos)
bbdd$pred3<-predict(modelo3,newdata=datos)

summary(modelo0)
summary(modelo1)
summary(modelo2)
summary(modelo3)

write.csv(bbdd,"C:/Users/AnaTsui/Desktop/TUM/ONTARIO/3y_season/models/business_GENDER.csv")

