#install.packages("mvnormtest")
#install.packages("ICSNP")

library(mvnormtest)
library(ICSNP)

###################### Import data
data = read.table("MANOVA.txt",sep="\t",header = TRUE)
data
