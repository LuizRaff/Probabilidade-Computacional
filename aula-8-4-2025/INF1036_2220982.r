# 1
## a)
# 5000 <
# 2, 3, 4 e 5
# 5

#   5             0             0          0   
# 2, 3, 4     2, 3, 4, 5    2, 3, 4, 5    5

print("1.a)")
print(3 * 4 * 4 * 1)

## b)
print("1.b)")


# 2
n <- 10000
x <- runif(n, -0.5, 0.5)
y <- runif(n, -0.5, 0.5)

cont <- 0
for (i in 1:n) {
  for (j in 1:n) {
    if(((x[i] ** 2) + (y[j] ** 2)) <= (0.5 ** 2)){
     cont <- cont + 1
    }
  }
}

print((cont / (n ** 2)) / (0.5 ** 2))

# 3
## a)
video_grame <- function(rodadas){
  # maria   = 1
  # augusto = 2
  # jardel  = 3
  jogadores <- c(1, 2, 3)
  prob.jogadores <- c(0.4, 0.3, 0.3)
  quantia.jogadores <- c(130, 160, 250)
  derrotas.jogadores <- c(0, 0, 0)
  
  for (i in 1:rodadas){
    winner <- sample(jogadores, 1, prob=prob.jogadores)
    quantia.jogadores <- quantia.jogadores - 1
    if (winner == 1){
      quantia.jogadores[1] <- quantia.jogadores[1] + 3
      
      derrotas.jogadores[1] <- 0
      derrotas.jogadores[2] <- derrotas.jogadores[2] + 1
      derrotas.jogadores[3] <- derrotas.jogadores[3] + 1
    }
    else if (winner == 2){
      quantia.jogadores[2] <- quantia.jogadores[2] + 3
      
      derrotas.jogadores[1] <- derrotas.jogadores[1] + 1
      derrotas.jogadores[2] <- 0
      derrotas.jogadores[3] <- derrotas.jogadores[3] + 1
    }
    else if (winner == 3){
      quantia.jogadores[3] <- quantia.jogadores[3] + 3
      
      derrotas.jogadores[1] <- derrotas.jogadores[1] + 1
      derrotas.jogadores[2] <- derrotas.jogadores[2] + 1
      derrotas.jogadores[3] <- 0
    }
    
    for (i in 1:3) {
     if ((quantia.jogadores[i] == 0) || (derrotas.jogadores[i] == 10)){
       return (quantia.jogadores)
     }
    }
  }
}


print(video_grame(1000))

## b)
qtd_grames <- 50
rst_grames <- c(0, 0, 0)

for (i in 1:qtd_grames) {
  rst_grames <- rst_grames + video_grame(1000)
}

print(rst_grames / qtd_grames)











