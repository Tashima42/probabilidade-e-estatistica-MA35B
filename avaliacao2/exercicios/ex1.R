setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao2/exercicios")

data <- read.csv(file="probabilidade.csv", sep = ";")

temperatura <- data$Temperatura
firstBrand <- data[data$Marca=="A",]
secondBrand <- data[data$Marca=="B",]

tempoA <- firstBrand$Temperatura
tempoB <- secondBrand$Temperatura

mediaTempodata <- mean(temperatura)
desvio <- sd(temperatura)
x <- seq(min(temperatura), max(temperatura), by=0.001)
fteorico <- dnorm(x, mean=mediaTempodata, sd=desvio)

hist(temperatura, freq = F, xlab = "Tempo B (Dias)", ylab = "Frequencia Relativa", main = "")
lines(x, fteorico, col="red")

qqnorm(temperatura, ylab="Quntis observados da amostra", xlab = "Quantis teóricos da distribuição normal")
qqline(temperatura,col="red")
