import random as rd


def f(n):
    p = []
    for i in range(n):
        igual = i / n
        not_igual = 1 - igual
        e_igual = rd.choices([1, 0], [not_igual, igual], k=1)
        if e_igual in [1]:
             p.append(rd.uniform(0, 1))
        else:
            a = i
            while(a > 1):
                a = a / 10
            p.append(a)
    
    return p


nsample = 1000
p = f(nsample)
print(p)

import matplotlib.pyplot as plt

# Cria Histograma #
plt.hist(p, bins=10, edgecolor='black', alpha=0.7)
plt.title('Histograma de p')
plt.xlabel('Valores')
plt.ylabel('Frequência')
plt.xticks([0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1])
plt.yticks(range(0, 100))
plt.grid(axis='y', alpha=0.75)
plt.show()
###################