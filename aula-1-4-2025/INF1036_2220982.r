# LCG params:
x0 <- 3
a <- 39373
c <- 0
m <- 2147483647

# funcs:
LCG <- function(seed, a, c, M, n){
  x <- seed
  U <- c()
  U <- c(U, x)
  
  for (i in 1:n) {
    nx <- (a * x + c) %% M
    U <- c(U, nx/M)
    x <- nx
  }
  
  return (U)
}

LM <- function(n){
  U <- c()
  for(j in 1:lancamentos){
    lm_temp <- 0
    for(i in 10:1){
      moeda <- sample(c(0, 1), 1, prob=c(0.5, 0.5))
      
      if(moeda == 1){
        lm_temp <- lm_temp + (2**(i-1))
      }
    }
    U <- c(U, (lm_temp / ((2**10)-1)))
  }
  
  return(U)
}

# a) ##########################################
lancamentos <- 10000

lcgU <- LCG(x0, a, c, m, lancamentos-1)
mersenne_twisterU <- runif(lancamentos)

cont.a <- 0
for (i in 1:lancamentos) {
  if ((lcgU[i] > 0.5) & ((mersenne_twisterU[i] >= 4/8) & (mersenne_twisterU[i] < 5/8))){
    cont.a <- cont.a + 1
  }
}

# b) ##########################################
lancamentos = 10000

lmU <- LM(10)
lcgU <- LCG(x0, a, c, m, lancamentos)

cont.b <- 0
for (i in 1:lancamentos) {
  if ((lcgU[i] > 0.5) & ((6/7 <= lmU[i]) & (lmU[i] < 7/7))){
    cont.b <- cont.b + 1
  }
}

# c) ##########################################
lancamentos = 10000

lmU <- LM(10)
mersenne_twisterU <- runif(lancamentos)

cont.c <- 0
for (i in 1:lancamentos) {
  if ((mersenne_twisterU[i] <= 0.45) & ((lmU[i] >= 0/8) & (lmU[i] < 1/8))){
    cont.c <- cont.c + 1
  }
  else if ((mersenne_twisterU[i] <= 0.45) & ((lmU[i] >= 3/8) & (lmU[i] < 4/8))){
    cont.c <- cont.c + 1
  }
  else if ((mersenne_twisterU[i] > 0.45) & ((lmU[i] >= 6/8) & (lmU[i] < 7/8))){
    cont.c <- cont.c + 1
  }
}

# resultados ####################################

print(cont.a)
print(cont.b)
print(cont.c)