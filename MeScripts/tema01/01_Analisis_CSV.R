auto <- read.csv("../r-course/data/tema1/auto-mpg.csv", 
                 header = TRUE, sep= ",", na.strings = "",
                 stringsAsFactors = FALSE)
names(auto)

#read.csv2 <- read.csv("Filename", sep=";", dec = ",")


auto_no_header <- read.csv("../r-course/data/tema1/auto-mpg-noheader.csv", 
                           header = FALSE, sep=",")
head(auto_no_header)


auto_no_sense <- read.csv("../r-course/data/tema1/auto-mpg-noheader.csv", 
                          header = TRUE, sep=",")
head(auto_no_sense)

WHO_auto_from_intrenet <- read.csv("http://frogames.es/course-contents/r/intro/tema1/WHO.csv")


#NA = Not Avalable
#na.string = ""
#as.character()
