install.packages("caret")
library(caret)
data <- read.csv("../../r-course/data/tema2/BostonHousing.csv")
View(data)

training.ids <- createDataPartition(data$MEDV, p = 0.8, list = F)
data.training <- data[training.ids,]
data.validation <- data[-training.ids,]

training.ids.2 <- createDataPartition(data$MEDV, p = 0.7 , list = F)
data.training.2 <- data[training.ids.2]

temp <- data[-training.ids.2,]

validation.ids.2 <- createDataPartition(temp$MEDV, p = 0.5, list = F)

data.validation <- temp[validation.ids.2,]
data.testing <- temp[-validation.ids.2]
