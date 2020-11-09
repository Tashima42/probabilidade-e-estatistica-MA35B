setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/tarefas")

dados <- read.csv("ac.csv",sep=";",dec=".")

wilcox.test(dados$AbdCirc~dados$Sexo)
