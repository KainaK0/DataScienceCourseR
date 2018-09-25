

ozone.data <- read.csv("../../r-course/data/tema1/ozone.csv", stringsAsFactors = FALSE)
View(ozone.data)

outlier.values <- boxplot(ozone.data$pressure_height,
                          main = "Pressure Height",
                          boxwex = 0.5)
summary(ozone.data$pressure_height)

boxplot(pressure_height ~ Month, 
        data = ozone.data,
        main = "Pressure Heigh per Month")

# add #out to get the values of outliers.
boxplot(ozone_reading ~Month,
        data = ozone.data,
        main = "Ozone reading per Month")$out

impute_outliers <- function(x, removeNA = TRUE){
  quantiles <- quantile(x,c(0.05,0.95), na.rm = removeNA)
  x[x<quantiles[1]] <- mean(x,na.rm = removeNA)
  x[x>quantiles[2]] <- median(x,na.rm = removeNA)
  x
}

impute_data <- impute_outliers(ozone.data$pressure_height)

par(mfrow = c(1,2))

boxplot(ozone.data$pressure_height, main = "Presión con Outliers")
boxplot(impute_data, main = "Presión sin outliers")
