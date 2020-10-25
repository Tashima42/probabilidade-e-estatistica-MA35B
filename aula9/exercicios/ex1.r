setwd("/home/tashima42/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula9/exercicios")

dados <- read.csv("Dieta.csv",sep=";",dec=".")

t.test(dados$Perda,mu=20,conf.level=0.95)

shapiro.test(dados$Perda)

install.packages("BSDA")
library(BSDA)
z.test(dados$Perda, sigma.x=sqrt(72.25), mu=20, conf.level=0.95)

install.packages("EnvStats")
library(EnvStats)
varTest(dados$Perda, sigma.squared=72.75, conf.level=0.90)

tabela <- table(dados$Hipertensao)
prop.test(tabela[1], sum(tabela, p=0.35, conf.level=0.90))