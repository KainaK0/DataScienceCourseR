students <- read.csv("../../r-course/data/tema1/data-conversion.csv")

bp <- c(-Inf, 10000, 31000, Inf)

names <- c("Low","Avarage", "High")

students$Income.cat <- cut(students$Income, breaks = bp , labels = names)

students$Income.cat2 <- cut(students$Income, breaks = bp)

students$Income.cat3 <- cut(students$Income, breaks =4,
                            labels = c("Level 1", "Level 2", "Level 3", "Level 4")
                            )

#dummy variables

install.packages("dummies")
library(dummies)

students <- read.csv("../../r-course/data/tema1/data-conversion.csv")

# all data frame
students.dummy <- dummy.data.frame(students, sep = ".")
# all = FALSE to just get the dummies variables

#variable of our interest
dummy.data.frame(students,names = c("Gender","State"))

#just one variable
students.gender.dummy <- dummy(students$Gender, sep = ".")




