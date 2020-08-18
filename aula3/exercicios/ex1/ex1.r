setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/exercicios/ex1")
dieta <- read.csv(file = "Dieta.csv", sep=";", dec = ".")

dietaTable <- table(dieta$Hipertensao)
dietaProp <- prop.table(dietaTable)

dietaTable2 <- table(dieta$Dieta, dieta$Hipertensao)
dietaProp2 <- prop.table(dietaTable2)

plot(dieta$Idade, dieta$Perda, xlab="Idade (anos)", ylab="Proporção de Perda de peso (%)")

cor(dieta$Idade, dieta$Perda, method = "spearman")
cor(dieta$Idade, dieta$Perda, method = "pearson")
cor(dieta$Idade, dieta$Perda, method = "kendall")

boxplot(dieta$Perda, ylab="Proporção de perda (%)")
boxplot(dieta$Perda~dieta$Dieta, ylab="Proporção de perda (%)", xlab = "Tipo de dieta", names=c("Dieta A", "Dieta B"))

tabela <- table(dieta$Hipertensao)
barplot(tabela,ylab="Frequência Absoluta",xlab="Hipertensão")
barplot(prop.table(tabela),ylab="Frequência Relativa",xlab="Hipertensão",col=c("green","red"))

dietaProp
dietaProp2

