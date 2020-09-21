setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao2/tarefa")

data <- read.csv(file="lowbwt2.csv", sep = ";")
data2 <- read.csv(file="cgd4.csv", sep = ";")

normal <- data[data$LOW=="N",]
smoked <- data[data$SMOKE=="S",]

normalAge <- normal$AGE
smokedAge <- smoked$AGE
peso <- data2$Peso

mediaTempodata <- mean(peso)
desvio <- sd(peso)
x <- seq(min(peso), max(peso), by=0.001)
fteorico <- dnorm(x, mean=mediaTempodata, sd=desvio)

hist(peso, freq = F, xlab = "Tempo (Dias)", ylab = "Frequencia Relativa", main = "")
lines(x, fteorico, col="red")

qqnorm(peso, ylab="Quntis observados da amostra", xlab = "Quantis teóricos da distribuição normal")
qqline(peso,col="red")