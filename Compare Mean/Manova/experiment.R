#install.packages("mvnormtest")
#install.packages("ICSNP")
#install.packages("MVN")
#install.packages("biotools")
#install.packages("car")

library(mvnormtest)
library(ICSNP)
library(MVN)
library(biotools)
library(car)

###################### Import data
data = read.table("C:\\Users\\LENOVO\\Documents\\analisis-multivariate\\Compare Mean\\Manova\\MANOVA.txt",sep="\t",header = TRUE)
data

attach(data)

x = cbind(Dry.weight, Optical.density, Product.yield)
y1 = Temperature
y2 = N.source

###################### Uji Asumsi
#1. Normalitas Multivariate
normality_test = mvn(data = x,mvnTest ="mardia")

print(normality_test)

#2. Uji Box's M
box_m_result <- boxM(data=x, grouping = data$Temperature)

print(box_m_result)

#3. Non-Multikoinieritas
cor_matrix <- cor(data[, c("Dry.weight", "Optical.density", "Product.yield")])
print(cor_matrix)

#4. Uji Indeks Variabilitas dalam ANOVA (Levene's Test)
leveneTest(Dry.weight ~ as.factor(N.source), data = data)
leveneTest(Optical.density ~ as.factor(N.source), data = data)
leveneTest(Product.yield ~ as.factor(N.source), data = data)

# Uji Bartlett
bartlett.test(Dry.weight ~ as.factor(N.source), data = data)
bartlett.test(Optical.density ~ as.factor(N.source), data = data)
bartlett.test(Product.yield ~ as.factor(N.source), data = data)


#################### MANOVA
manova_result  = manova(x ~ y1*y2)

# Tampilkan hasil MANOVA
summary(manova_result)

# Tampilkan hasil uji statistika per komponen
summary.aov(manova_result)
