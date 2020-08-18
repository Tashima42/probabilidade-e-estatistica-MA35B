setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa1")
dados <- read.csv(file = "cgd1.csv", sep = ",")

f <- table(dados$PH)
fr <- prop.table(f)

f
fr * 100