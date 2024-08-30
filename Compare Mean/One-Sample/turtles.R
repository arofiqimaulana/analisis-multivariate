#install.packages("readxl")
#install.packages("mvnormtest")
#install.packages("ICSNP")

library("readxl")
library(mvnormtest)
library(ICSNP)

###################### Import data
data = read_excel("turtles.xlsx")
x1 = data$Length
x2 = data$Width
x3 = data$Height

x = cbind(x1,x2,x3)

###################### Uji Normalitas Multivariate
mshapiro.test(t(x))

# We find the sample mean vector and sample variance-covariance matrix
x.bar=apply(x,MARGIN=2,FUN=mean)
x.bar

# Matriks Variance-Covariance
A = var(x)
A

# dugaan
mu = c(149,100,53) ### Specified value of mean under null is(149,100,53)

# statistik uji
n = nrow(x) ### Number of observations
p = ncol(x) ### Number of variables

Tp.2=as.numeric(n*(t((x.bar-mu))%*%solve(A)%*%(x.bar-mu)))
Test.statistic=(Tp.2*(n-p))/(p*(n-1))
Test.statistic

# titik kritis
qf(0.95,p,n-p)

###################### Uji Normalitas via Package
test=HotellingsT2(x,mu=mu,test="f")
print(test)
