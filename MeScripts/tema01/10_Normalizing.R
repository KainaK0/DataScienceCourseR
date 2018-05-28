housing <- read.csv("../../r-course/data/tema1/BostonHousing.csv")
# function scale works with numeric datset, not with categorical variables

housing.z <- scale(housing)

#Get the same data
housing.none <- scale(housing,center = FALSE,scale = FALSE)
# with out divide with desviasión
housing.mean <- scale(housing, center = TRUE, scale = FALSE)
#with out minus mean
housing.sd <- scale(housing, center = F,scale = T)

housing$AGE.scale <- scale(housing$AGE)

scale.many <- function(dataframe, cols){
  names <- names(dataframe)
  for (col in cols) {
    name <- paste(names[col],"z",sep = ".")
    dataframe[name] <- scale(dataframe[,col])
  }
  cat(paste("Hemos normalizado",length(cols),"vairable(s)"))
  dataframe
  }

housing.z <- scale.many(housing,c(1,2,5,8))

           