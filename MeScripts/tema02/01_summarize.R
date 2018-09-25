
data <- read.csv("../../r-course/data/tema2/auto-mpg.csv",header = TRUE, stringsAsFactors = FALSE)
View(data)


#changing a Variable from numeric to factors
data$cylinders <- factor(data$cylinders,
                         levels = c(3,4,5,6,8),
                         labels = c("3cel", "4cil", "5cil", "6cil", "8cil"))

View(data)

summary(data)

str(data)

install.packages(c("modeest","raster","moments"))
library(modeest) #moda
library(raster) #quantiles, cv
library(moments) #asimetria, curtosis

X = data$mpg

mean(X)  #sum(X)/length(X)
median(X)
modeest::mfv(X)

quantile(X)

#Medidas de disperción

var(X) #varianza

sd(X) #desviación tipica

cv(X) #coeficiente de variación

#medidas de asimetria
skewness(X)
kurtosis(X)

par(mfrow = c(1,1))
hist(X)
