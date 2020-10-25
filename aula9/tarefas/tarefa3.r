setwd("/home/tashima42/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula9/tarefas")

dados <- read.csv("seringueira.csv",sep=";",dec=".")

qqnorm(dados$Producao)
qqline(dados$Producao,col="red")

library(EnvStats)
varTest(dados$Producao, sigma.squared=1500, conf.level=0.90)