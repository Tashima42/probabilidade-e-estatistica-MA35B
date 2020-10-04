setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula8/tarefas/")

dados <- read.csv("cgd1.csv",sep=";",dec=".")

padraoX <- dados[dados$PH=="1",]

tabela <- table(padraoX)

prop.test(tabela[1],sum(tabela),conf.level=0.90)$conf.int