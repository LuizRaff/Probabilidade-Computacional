simulador <- function(nrodadas, quantia, probabilidade) {
  numero.jogadores <- length(quantia)
  jogadores <- seq(1:numero.jogadores)
  quantia.final <- quantia
  rodada <- 0
  
  while ((rodada < nrodadas) & (min(quantia.final) > 0)) {
    rodada <- rodada + 1
    quantia.final <- quantia.final - 1
    vencedor <- sample(jogadores, 1, prob = probabilidade)
    quantia.final[vencedor] <- quantia.final[vencedor] + numero.jogadores
  }
  
  return(quantia.final)
}

numerorodadas <- 1000
quantia.inicial <- c (150, 70, 240)
probabilidade.vencer <- c (0.3, 0.4, 0.3)
campeonato <- simulador(numerorodadas, quantia.inicial, probabilidade.vencer)

sprintf("Quantia final")
sprintf("Maria = %d.", campeonato[1])
sprintf("Gustavo = %d.", campeonato[2])
sprintf("Jorge = %d.", campeonato[3])
