nsamples <- 100000
cont.A <- 0
cont.B <- 0

for (i in 1:nsamples) {
  
  face1 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5))
  face2 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5))
  face3 <- sample(c("CA","CO"), 1, prob = c(2/5, 3/5))
  
  if (((face1 == "CA") & (face2 == "CO")) | ((face1 == "CO") & (face2 == "CA"))) {
    cont.A <- cont.A + 1
  }
  
  if ((face2 == "CO") & (face3 == "CO")) {
    cont.B <- cont.B + 1
  }

}

PA <- cont.A / nsamples
print(PA)

PB <- cont.B / nsamples
print(PB)
