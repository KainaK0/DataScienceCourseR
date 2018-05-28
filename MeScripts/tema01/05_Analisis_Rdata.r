clientes <- c("Juan Gabriel", "Ricardo", "Pedro")
fechas <- as.Date(c("2017-12-27", "2017-11-1", "2017-1-1"))
pago <- c(315,192.55,40.15)
clientes_vip <- c("Juan Gabriel", "Ricardo")

pedidos <- data.frame(clientes,fechas,pago)

save(pedidos,clientes_vip,file = "../r-course/data/tema1/pedidos_me.Rdata")
# guarda mas de un objeto y su dataframe
saveRDS(pedidos,file = "../r-course/data/tema1/pedidosRDS_me.rds")
#guarda solo un objeto sin su nombre

remove(pedidos)


#caragar archivos y dataset
load("../r-course/data/tema1/pedidos_me.Rdata")
#no advierte si ya se tiene la variable lo suscribe
oders <- readRDS("../r-course/data/tema1/pedidosRDS_me.rds")

#Data pre cagada por parte de R
data(iris)
data(cars)
#necesita el packete de dataset actibarlo en packages

#para guardar todos los objetos
save.image()

#Guardar Data de una forma mas estilizada
prime <- c(3,5,7,11,17)
pow2 <- c(2,4,8,16,32,64,128)
save(list=c("prime","pow2"),file ="../r-course/data/tema1/primes_and_pow2.Rdata")

#a diferencia de load este informa si ya existe variables con nombre preguardados
attach("../r-course/data/tema1/primes_and_pow2.Rdata")


