install.packages("mice")
library(mice)

housing.data <- read.csv("../../r-course/data/tema1/housing-with-missing-value.csv", header = TRUE,stringsAsFactors = FALSE)

columns <- c("ptratio", "rad")

imputed_data <- mice(housing.data[,names(housing.data) %in% columns],
                     m=5,
                     maxit = 50,
                     method = "pmm",
                     seed = 2018)

summary(imputed_data)

complete.data <- mice::complete(imputed_data)

housing.data$ptratio <- complete.data$ptratio
housing.data$rad <- complete.data$rad

anyNA(housing.data)

install.packages("Hmisc")
library(Hmisc)

impute_arg <- aregImpute(~ptratio+rad, data= housing.data,n.impute = 5)

impute_arg
