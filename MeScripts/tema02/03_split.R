#split / unsplit

data <- read.csv("../../r-course/data/tema2/auto-mpg.csv", stringsAsFactors = F)

View(data)

carsplit <- split(data, data$cylinders)

carsplit[1] #get the object '3' 
carsplit[[1]] #get the dataframe got on '3'

str(carsplit[1])
str(carsplit[[1]])

names(carsplit[1])
names(carsplit[[1]])

