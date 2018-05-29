family.salary <- c(4,6,5,8,6,7,6)
family.salary <- family.salary*10000
family.size <- c(4,3,2,2,3,4,3)
family.car <- c("Lujo","Compacto","Utilitario","Lujo","Compacto","Compacto","Compacto")

family <- data.frame(family.salary,family.size,family.car)
#función que elimina duplicaciones
family.unique <- unique(family)
duplicated(family)

family[!duplicated(family),]

