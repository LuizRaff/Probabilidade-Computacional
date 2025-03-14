import random

# sample == random.choices
nsamples = 100000
Pb = 0
Pa = 0

for i in range(nsamples):
    face1 = random.choices(population=["CA", "CO"], weights=[2/5, 3/5], k=1)[0]
    face2 = random.choices(population=["CA", "CO"], weights=[2/5, 3/5], k=1)[0]
    face3 = random.choices(population=["CA", "CO"], weights=[2/5, 3/5], k=1)[0]
    
    if (face1 == "CA" and face2 == "CO") or (face1 == "CO" and face2 == "CA"):
        Pa += 1
        
    if (face2 == "CO" and face3 == "CO") or (face2 == "CO" and face3 == "CO"):
        Pb += 1
        
print("P(A): ", Pa/nsamples)
print("P(B): ", Pb/nsamples)