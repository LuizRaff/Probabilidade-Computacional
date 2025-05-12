# 0,09 nao boa
# 0,06 nao selecionar boa
# 5% nao sao boas

prob_boa = 0.009
prob_escolher_ruim = 0.006
prob_sao_ruins = 0.5

samples = 10000
laranjas = runif(samples)

qtd_boa = 0
qtd_ruim = 0

for (i in 1:samples) {
  if(laranjas[i] < 0.05){
    selecionou = sample(c(1, 0), 1, prob=c(0.91, 0.09))
    if(selecionou == 1){
      qtd_ruim = qtd_ruim + 1
    }
  }else{
    selecionou = sample(c(1,0), 1, prob=c(0.94, 0.06))
    if(selecionou == 1){
      qtd_boa = qtd_boa + 1
    }
  }
}


print(qtd_boa / (samples * 0.95))
print(1 - (qtd_ruim / (samples * 0.05)))