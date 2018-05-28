LEctura de Data CSV
data <- read.csv("../r-course/data/tema1/missing-data.csv", header = TRUE, na.strings = "")
#Elimina filas con algún dato NA
data.cleaned <- na.omit(data)
#forma manual de buscar NAs
is.na(data$Phone_type)

data.income.cleaned <- data[!is.na(data$Income),]
#Busca si almenos una fila tiene un NA o esta incompleta
complete.cases(data)
#modo alternativo al i.omit
data.cleaned2 <- data[complete.cases(data),]

1#convertir los ceros de ingresos a NA
data$Income[data$Income==0] <- NA
