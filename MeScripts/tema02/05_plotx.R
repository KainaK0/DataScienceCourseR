setwd(dir = "GitProjects/DataScienceCourseR/MeScripts/tema02/")
auto <- read.csv("../../r-course/data/tema2/auto-mpg.csv")
# no usamos stringAsFactors = F porque no usaremos esa variabñe

auto$cylinders <- factor(auto$cylinders,
                         levels = c(3,4,5,6,8),
                         labels = c("3cil","4cil", "5cil","6cil", "8cil"))

attach(auto) #the dataframe set linger to the code.
head(cylinders)

#Histograma de freuencias
hist(acceleration,
     #col = "blue",
     col = rainbow(12),
     xlab = "Aceleracióm",
     ylab = "Frecuencias",
     main = "Histograma de las Aceleraciones",
     breaks = 12)

hist(mpg, breaks = 16, prob = T)

lines(density(mpg))

#Diagrama de Caja y Bigotess

boxplot(mpg, 
        xlab = "Millas por Galeon")
boxplot(mpg ~ model_year, xlab = "Millas por Galeon")

boxplot(mpg ~ cylinders, ylab = "Millas por Galeon", xlab = "Cyleders")

boxplot(auto)

#Scaterplot
plot(mpg ~ horsepower, type = "n")
linearmodel <- lm(mpg ~ horsepower)
abline(linearmodel)

#Agregar colores para cada cylindrada
with(subset(auto,cylinders=="8cil"),
     points(horsepower,mpg,col = "red"))

with(subset(auto,cylinders=="6cil"), 
     points(horsepower,mpg,col = "blue"))

with(subset(auto,cylinders=="5cil"), 
     points(horsepower,mpg,col = "green"))

with(subset(auto,cylinders=="4cil"), 
     points(horsepower,mpg,col = "pink"))

with(subset(auto,cylinders=="3cil"), 
     points(horsepower,mpg))
#Matriz de Scaterplot

pairs(~mpg+displacement+horsepower+weight)



