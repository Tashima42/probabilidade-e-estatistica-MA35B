setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/tarefas")

dados <- read.csv("lowbwt5.csv",sep=";",dec=".")

chisq.test(table(dados$HT,dados$SMOKE))