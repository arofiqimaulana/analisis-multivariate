library(Hotelling)

# grab data
df = my_data <- read.table(file = "MANOVA.txt", 
                           sep = "\t", header=TRUE)

x1=data$Length
x2=data$Width
x3=data$Height
x=cbind(x1,x2,x3)

# One-Sample MANOVA using Hotelling's T-squared
test_result <- hotelling.test(data)
print(test_result)
