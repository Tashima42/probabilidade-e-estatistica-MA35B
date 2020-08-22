setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa2")
dados1 <- read.csv(file = "lowbwt3.csv", sep = ";")
dados2 <- read.csv(file = "lowbwt4.csv", sep = ";")

f1 <- table(dados1$LOW, dados1$HT)
fr1 <- prop.table(f1, 1)

f2 <- table(dados2$LOW, dados2$UI)
fr2 <- prop.table(f2, 1)


f2
fr2 * 100