setwd(dir = "GitProjects/DataScienceCourseR/MeScripts/tema01/")
install.packages("tidyr")
library(tidyr)

crime.data <- read.csv("../../r-course/data/tema1/USArrests.csv", stringsAsFactors = FALSE)
View(crime.data)

crime.data <- cbind(state = rownames(crime.data), crime.data)
crime.data.1 <- gather(crime.data,
                       key = "crime_type",
                       value = "arrest_estimate",
                       Murder : UrbanPop)
View(crime.data.1)

crime.data.2 <- gather(crime.data,
                     key = "crime_type",
                     value = "arrest_estimate",
                     -state)
View(crime.data.2)

crime.data.3 <- gather(crime.data,
                       key="crime_type",
                       value = "arrest_estimate",
                       Murder, Assault)
View(crime.data.3)

crime.data.4 <- spread(crime.data.2,
                       key = "crime_type",
                       value = "arrest_estimate")
View(crime.data.4)

crime.data.5 <- unite(crime.data,
                      col = "Murder_Assault",
                      Murder, Assault, sep = "_")
View(crime.data.5)

crime.data.6 <- separate(crime.data.5,
                         col = "Murder_Assault",
                         into = c("Murder", "Assault"),
                         sep = "_")
View(crime.data.6)
