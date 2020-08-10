setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/exercicios/ex1")
dados <- read.csv(file = "Dieta.csv", sep = ";", dec = ".")

# Definindo variáveis para as colunas de dados
dadosDieta <- dados$Dieta
dadosHipertensao <- dados$Hipertensao
dadosPerda <- dados$Perda
dadosIdade <- dados$Idade

# Calculando a média de perda e qual a melhor dieta
mediaPerda <- mean(dadosPerda)
melhorDietaPorMediaPerda <- tapply(dadosPerda,dadosDieta,mean)
medianaPerda <- median(dadosPerda)
melhorDietaPorMedianaPerda <- tapply(dadosPerda, dadosDieta, median)
diferencaEntreMaiorEMenorVetor <- diff(range(dadosPerda))
maxMinDiferencaDieta <- tapply(dadosPerda, dadosDieta, range)
maxMinDiferencaDietaA <- maxMinDiferencaDieta$A
maxMinDiferencaDietaB <- maxMinDiferencaDieta$B
diferencaDietaA <- diff(maxMinDiferencaDietaA)
diferencaDietaB <- diff(maxMinDiferencaDietaB)
desvioPadraoPerda <- sd(dadosPerda)
desvioPadraoPerdaPorDieta <- tapply(dadosPerda, dadosDieta, sd)
proporcaoPerdaPeso <- IQR(dadosPerda)
proporcaoPerdaPesoPorDieta <- tapply(dadosPerda, dadosDieta, IQR)

# Mostra os resultados no console
mediaPerda
melhorDietaPorMediaPerda
medianaPerda
melhorDietaPorMedianaPerda
diferencaEntreMaiorEMenorVetor
maxMinDiferencaDieta
diferencaDietaA
diferencaDietaB
desvioPadraoPerda
desvioPadraoPerdaPorDieta
proporcaoPerdaPeso
proporcaoPerdaPesoPorDieta