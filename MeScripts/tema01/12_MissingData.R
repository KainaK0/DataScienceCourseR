housing.data <- read.csv("../../r-course/data/tema1/housing-with-missing-value.csv", stringsAsFactors = FALSE )

summary(housing.data)

##Delete all obs which has a some NA
housing.data.1 <- na.omit(housing.data)
summary(housing.data.1)



#how to delete al NA rows without a specifics variables
drop_na <- c("rad")
housing.data.2 <- housing.data[
  complete.cases(housing.data[,!(names(housing.data))%in% drop_na]) ,]

summary(housing.data.2)

#Delete a variable or objet, a complete dataframe.
housing.data$rad <- NULL

drops <- c("rad", "ptratio")
housing.data.3 <- housing.data[,!(names(housing.data) %in% drops)]
summary(housing.data.3)
