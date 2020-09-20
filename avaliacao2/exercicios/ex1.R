setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao2/exercicios")

data <- read.csv(file="probabilidade.csv", sep = ";")

mediaTempodata <- mean(data$Tempo)
desvio <- sd(data$Tempo)
x <- seq(min(data$Tempo), max(data$Tempo), by=0.001)
fteorico <- dnorm(x, mean=mediaTempodata, sd=desvio)

hist(data$Tempo, freq = F, xlab = "Tempo De Duracao (Dias)", ylab = "Frequencia Relativa", main = "")
lines(x, fteorico, col="red")