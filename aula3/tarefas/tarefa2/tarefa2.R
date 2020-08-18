setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa2")
dados <- read.csv(file = "lowbwt3.csv", sep = ";")

f <- table(dados$LOW, dados$HT)
fr <- prop.table(f, 1)

f
fr * 100