raio1 <- 1
raio2 <- 1
numeroAmostras <- 100000
cont.dentro.area.cultivada <- 0

for (i in 1:numeroAmostras) {
  
  x <- runif(1)
  y <- runif(1)
  
  distancia1 <- sqrt((x - 0)^2 + (y - 0)^2)
  
  distancia2 <- sqrt((x - 1)^2 + (y - 1)^2)
  
  if ((distancia1 <= raio1) & (distancia2 <= raio2)) {
    cont.dentro.area.cultivada <- cont.dentro.area.cultivada + 1
  }

}

p.dentro.area.cultivada <- cont.dentro.area.cultivada / numeroAmostras

area.total <- 1

area.cultivada = p.dentro.area.cultivada * area.total

adubo.por.quilometro <- 200

numero.meses <- 12

quantidade.adubo <- area.cultivada * adubo.por.quilometro * numero.meses

print(paste0("Quantidade (kg) = ", quantidade.adubo))


