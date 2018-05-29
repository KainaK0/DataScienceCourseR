data <- read.csv("../r-course/data/tema1/missing-data.csv",na.strings = "",header = T)
data$Income.mean <- ifelse(is.na(data$Income),
                           mean(data$Income,na.rm = T),
                           data$Income)
#X es un vector de datos que puede contener NA
rand.impute <- function(x){
# missing es un Vector booleano dependiendo del NA de x
  missing <- is.na(x)
#n.missing contiene cuantos NA dentro de x
  n.missing <- sum(missing)
#x.obs vector booleano de valores que no son NA de x
  x.obs <- x[!missing]
#devuelve la entrada por defecto
  imputed <- x
#valores faltantes se remplazan por una muestra de los conocidos
  imputed[missing] <- sample(x.obs, n.missing,replace = TRUE)
  return(imputed)
}

random.impute.data.frame <- function(dataframe, cols){
  names <- names(dataframe)
  for (col in cols) {
    name <- paste(names[col],"imputed", sep = ".")
    dataframe[name] <- rand.impute(dataframe[,col])
  }
  dataframe
}


data <- read.csv("../r-course/data/tema1/missing-data.csv",na.strings = "",header = T)
data$Income[data$Income==0]<-NA

data <- random.impute.data.frame(data, c(1,2))
