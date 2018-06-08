install.packages("tidyr")
library(tidyr)

crime.data <- read.csv("../../r-course/data/tema1/USArrests.csv", stringsAsFactors = FALSE)
View(crime.data)

crime.data <- cbind(state = rownames(crime.data), crime.data)
