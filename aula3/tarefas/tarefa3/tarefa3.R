setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa3")
dados <- read.csv(file="corn.csv", sep=";")
dados2 <- read.csv(file="laheart.csv", sep=";")
dados3 <- read.csv(file="cgd3.csv", sep=";")

# cor(dados$Producao, dados$Custo, method="pearson")
# cor(dados$Producao, dados$Custo, method="spearman")
# cor(dados$Producao, dados$Custo, method="kendall")

# plot(dados$Producao, dados$Custo, xlab="Producao", ylab = "Custo")

cor(dados3$Tempo, dados3$Idade, method="pearson")
cor(dados3$Tempo, dados3$Idade, method="spearman")
cor(dados3$Tempo, dados3$Idade, method="kendall")

plot(dados2$Peso, dados2$Colesterol, xlab="Peso", ylab = "Colesterol")