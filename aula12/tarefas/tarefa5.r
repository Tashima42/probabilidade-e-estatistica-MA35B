setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/tarefas")

dados <- read.csv("shock1.csv",sep=";",dec=".")

wilcox.test(dados$SBP~dados$Tempo,paired=T)
