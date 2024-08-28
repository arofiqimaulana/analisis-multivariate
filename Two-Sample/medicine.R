#install.packages("readxl")
#install.packages("mvnormtest")
#install.packages("ICSNP")

library("readxl")
library(mvnormtest)
library(ICSNP)


###################### Import data
data = read_excel("medicine.xlsx")
X = cbind(data$Fever_Drug,data$Pressure_Drug,data$Aches_Drug)
Y = cbind(data$Fever_Placebo,data$Pressure_Placebo,data$Aches_Placebo)

X_not_na = na.omit(X)
Y_not_na = na.omit(Y)


###################### Uji Normalitas Multivariate
mshapiro.test(t(X_not_na)) # Drug
mshapiro.test(t(Y_not_na)) # Placebo

###################### Uji T Hotelling
HotellingsT2(X_not_na,Y_not_na)
