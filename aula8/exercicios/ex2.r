setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula8/exercicios/")

dados <- read.csv("Dieta.csv",sep=";",dec=".")

DietaA <- dados[dados$Dieta=="A",]

tabela <- table(DietaA$Hipertensao)

prop.test(tabela[1],sum(tabela),conf.level=0.95)$conf.int