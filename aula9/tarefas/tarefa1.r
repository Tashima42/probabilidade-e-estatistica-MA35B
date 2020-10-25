setwd("/home/tashima42/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula9/tarefas")

dados <- read.csv("shock1.csv",sep=";",dec=".")

qqnorm(dados$HR)
qqline(dados$HR,col="red")

t.test(dados$HR, mu=110, conf.level=0.95)