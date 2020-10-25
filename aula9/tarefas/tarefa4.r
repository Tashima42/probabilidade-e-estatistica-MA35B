setwd("/home/tashima42/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula9/tarefas")

dados <- read.csv("lowbwt2.csv",sep=";",dec=".")

tabela <- table(dados$SMOKE)
prop.test(tabela[1], sum(tabela), p=0.55, conf.level=0.99)