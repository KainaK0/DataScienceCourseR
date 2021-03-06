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

# Partition Categorical Variable

data2 <- read.csv("../../r-course/data/tema2/boston-housing-classification.csv")

View(data2)

training.ids.3 <- createDataPartition(data2$MEDV_CAT, p = 0.7, list = F)
data.training.3 <- data2[training.ids.3,]
data.validation.3 <- data2[-training.ids.3,]


#automation

rda.cb.partition2 <- function(dataframe, target.index, prob){
  library(caret)
  training.ids <- createDataPartition(dataframe[,target.index], p = prob, list = F)
  list(train = dataframe[training.ids,], val = dataframe[-training.ids])
}

rda.cb.partition3 <- function(dataframe, target.index, prob.train, prob.val){
  library(caret)
  training.ids <- createDataPartition(dataframe[,target.index], p=prob.train  , list = F)
  train.data <- dataframe[training.ids,]
  temp <- dataframe[-training.ids,]
  validation.ids <- createDataPartition(temp[,target.index], 
                                        p = prob.val, 
                                        list =F)
  list(train = train.data, val = temp[validation.ids,], test = temp[-validation.ids,])
}

data_1 <- rda.cb.partition2(data, 14, 0.8)
data_2 <- rda.cb.partition3(data, 14, 0.8, 0.5)

data_3 <- rda.cb.partition2(data2, 14, 0.8)
data_4 <- rda.cb.partition3(data2, 14, 0.8, 0.5)

head(data_1$val)

sample1 <- sample(data$CRIM, 40, replace = F)




