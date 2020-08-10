setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/exercicios/ex1")
dados <- read.csv(file = "Dieta.csv", sep = ";", dec = ",")
mediaPerda <- mean(dados$Perda)
melhorDietaPorPerda <- tapply(dados$Perda, dados$Dieta, mean)