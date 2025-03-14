import math
import random

# runif == random.uniform
raio1 = 1
raio2 = 1
nAmostras = 100000
dentroDaArea = 0

for i in range(nAmostras):
    x = random.uniform(0, 1)
    y = random.uniform(0, 1)
    
    distancia1 = math.sqrt(((x - 0)**2) + ((y - 0)**2))
    distancia2 = math.sqrt(((x - 1)**2) + ((y - 1)**2))
    
    if distancia1 <= raio1 and distancia2 <= raio2:
        dentroDaArea += 1
        
porcentagemDentrondaArea = dentroDaArea/nAmostras
areaTotal = 1

areaCultivada = porcentagemDentrondaArea * areaTotal

aduboPorKM = 200
nMeses = 12

qtdAdubo = areaCultivada * aduboPorKM * nMeses

print("Quantidade de adubo necessária: ", qtdAdubo)