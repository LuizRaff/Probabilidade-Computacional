qtdPartidas = 1000
qtdRodadas = 1000

qtdMaria = 150
qtdGustavo = 70
qtdJorge = 240
possb = ['Maria'] * 3 + ['Gustavo'] * 4 + ['Jorge'] * 3

import random

for i in range(qtdPartidas):
    for j in range(qtdRodadas):
        qtdMaria -= 1
        qtdGustavo -= 1
        qtdJorge -= 1
        
        vitoria = random.randint(1, 10)
        
        if possb[vitoria - 1] == 'Maria':
            qtdMaria += 3
        elif possb[vitoria - 1] == 'Jorge':
            qtdJorge += 3
        else:
            qtdGustavo += 3
            
        if qtdMaria <= 0 or qtdGustavo <= 0 or qtdJorge <= 0:
            break
        
    if qtdMaria <= 0 or qtdGustavo <= 0 or qtdJorge <= 0:
        break
    
print("Maria: ", qtdMaria)
print("Gustavo: ", qtdGustavo)
print("Jorge: ", qtdJorge)