setwd("/home/tashima42/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula9/tarefas")

dados <- read.csv("corn.csv",sep=";",dec=".")

shapiro.test(dados$Producao)
library(BSDA)
z.test(dados$Producao, sigma.x=sqrt(23), mu=200, conf.level=0.95)