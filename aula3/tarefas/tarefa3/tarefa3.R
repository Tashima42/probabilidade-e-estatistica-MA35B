setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa3")
dados <- read.csv(file="corn.csv", sep=";")

cor(dados$Producao, dados$Custo, method="pearson")
cor(dados$Producao, dados$Custo, method="spearman")
cor(dados$Producao, dados$Custo, method="kendall")

plot(dados$Producao, dados$Custo, xlab="Producao", ylab = "Custo")