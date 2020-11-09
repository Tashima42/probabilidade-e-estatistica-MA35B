setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/tarefas")

dados <- read.csv("corn.csv",sep=";",dec=".")

cor.test(dados$Producao,dados$Custo,method="spearman")
cor.test(dados$Producao,dados$Custo,method="kendall")
