# c1 4, c2 4, c3 6, c4 6 - sem manutencao
# c1 4, c2 4, c3 6/2, c4 6/2 - manutencao preventiva
# 40% faz manutencao


nSamples <- 100000

cont.com.manu <- 0
cont.com.manu.defeito <- 0
cont.sem.manu <- 0
cont.sem.manu.defeito <- 0

cont.com.manu.c1 <- 0
cont.com.manu.c2 <- 0
cont.com.manu.c3 <- 0
cont.com.manu.c4 <- 0
cont.sem.manu.c1 <- 0
cont.sem.manu.c2 <- 0
cont.sem.manu.c3 <- 0
cont.sem.manu.c4 <- 0

for (i in 1:nSamples) {
  fez.manutencao <- sample(c("SIM", "NAO"), 1, prob = c(40 / 100, 60 / 100))
  
  
  if (fez.manutencao == "NAO") {
    cont.sem.manu <- cont.sem.manu + 1
    
    c1.error <- sample(c("C1", "NAN"), 1, prob = c(4 / 100, 96 / 100))
    c2.error <- sample(c("C2", "NAN"), 1, prob = c(4 / 100, 96 / 100))
    c3.error <- sample(c("C3", "NAN"), 1, prob = c(6 / 100, 94 / 100))
    c4.error <- sample(c("C4", "NAN"), 1, prob = c(6 / 100, 94 / 100))
    
    if (c1.error == "C1") {
      cont.sem.manu.c1 <- cont.sem.manu.c1 + 1
    }
    if (c2.error == "C2") {
      cont.sem.manu.c2 <- cont.sem.manu.c2 + 1
    }
    if (c3.error == "C3") {
      cont.sem.manu.c3 <- cont.sem.manu.c3 + 1
    }
    if (c4.error == "C4") {
      cont.sem.manu.c4 <- cont.sem.manu.c4 + 1
    }
    
    if ((c1.error == "C1") | (c2.error == "C2") | (c3.error == "C3") |(c4.error == "C4")) {
      cont.sem.manu.defeito <- cont.sem.manu.defeito + 1
    }
    
  } else{
    cont.com.manu <- cont.com.manu + 1
    
    c1.error <- sample(c("C1", "NAN"), 1, prob = c(4 / 100, 96 / 100))
    c2.error <- sample(c("C2", "NAN"), 1, prob = c(4 / 100, 96 / 100))
    c3.error <- sample(c("C3", "NAN"), 1, prob = c(3 / 100, 97 / 100))
    c4.error <- sample(c("C4", "NAN"), 1, prob = c(3 / 100, 97 / 100))
    
    if (c1.error == "C1") {
      cont.com.manu.c1 <- cont.com.manu.c1 + 1
    }
    if (c2.error == "C2") {
      cont.com.manu.c2 <- cont.com.manu.c2 + 1
    }
    if (c3.error == "C3") {
      cont.com.manu.c3 <- cont.com.manu.c3 + 1
    }
    if (c4.error == "C4") {
      cont.com.manu.c4 <- cont.com.manu.c4 + 1
    }
    
    if ((c1.error == "C1") | (c2.error == "C2") | (c3.error == "C3") |(c4.error == "C4")) {
      cont.com.manu.defeito <- cont.com.manu.defeito + 1
    }
  }
}

porcent.total.defeito <- (
  cont.com.manu.defeito + cont.sem.manu.defeito
  ) / nSamples
porcent.total.com.manu <- cont.com.manu.defeito / cont.com.manu
porcent.total.sem.manu <- cont.sem.manu.defeito / cont.sem.manu

# (a) #
sprintf("Apresentaram defeito: %.2f%%", porcent.total.defeito * 100)
sprintf("Apresentaram algum defeito se não for feita manutenção preventiva: %.2f%%", porcent.total.sem.manu * 100)
sprintf("Apresentaram algum defeito se for feita manutenção preventiva: %.2f%%", porcent.total.com.manu * 100)

# (b) #
sprintf("Tenha sido feita manutenção preventiva dado que o equipamento apresentou somente o defeito C1: %.2f%%", (cont.com.manu.c1 / (cont.com.manu.c1 + cont.sem.manu.c1)) * 100)
sprintf("Tenha sido feita manutenção preventiva dado que o equipamento apresentou somente o defeito C3: %.2f%%", (cont.com.manu.c3 / (cont.com.manu.c3 + cont.sem.manu.c3)) * 100)
