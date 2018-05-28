install.packages("jsonlite")
library(jsonlite)

dat.1 <- fromJSON("../r-course/data/tema1/students.json")
dat.2 <- fromJSON("../r-course/data/tema1/student-courses.json")

dat.1$Email

#toJSON crea una estructura JSON de un DATAFRAME

