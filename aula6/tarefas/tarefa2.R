setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula6/tarefas")

dados <- read.csv(file = "laheart.csv", sep = ",")

antesInt <- dados[dados$Status=="A",]

colesterol <- antesInt$Colesterol

media <- mean(colesterol)
desvio <- sd(colesterol)
x <- seq(min(colesterol), max(colesterol), by=0.001)
fteorico <- dnorm(x, mean=media, sd=desvio)

hist(colesterol, freq = F, xlab = "Colesterol (mg%)", ylab = "Frequencia Relativa", main = "")
lines(x, fteorico, col="red")

qqnorm(colesterol, ylab="Quntis observados da amostra", xlab = "Quantis teóricos da distribuição normal")
qqline(colesterol,col="red")