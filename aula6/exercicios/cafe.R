setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula6/exercicios")
cafe <- read.csv(file = "Cafe.csv", sep = ",")

mediaPesoCafe <- mean(cafe$Peso)
desvio <- sd(cafe$Peso)
x <- seq(min(cafe$Peso), max(cafe$Peso), by=0.001)
fteorico <- dnorm(x, mean=mediaPesoCafe, sd=desvio)

hist(cafe$Peso, freq = F, xlab = "Peso Empacotado (kg)", ylab = "Frequencia Relativa", main = "")
lines(x, fteorico, col="red")

qqnorm(cafe$Peso, ylab="Quntis observados da amostra", xlab = "Quantis teóricos da distribuição normal")
qqline(cafe$Peso,col="red")

MaqA <- cafe[cafe$Maquina=="A",]
MaqB <- cafe[cafe$Maquina=="B",]

hist(MaqA$Peso, freq = F, xlab = "Peso Empacotado (kg)", ylab = "Frequencia Relativa", main = "")
hist(MaqB$Peso, freq = F, xlab = "Peso Empacotado (kg)", ylab = "Frequencia Relativa", main = "")