setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa1")
dados1 <- read.csv(file = "cgd1.csv", sep = ",")
dados2 <- read.csv(file = "lowbwt1.csv", sep = ";")


f1<- table(dados1$PH)
fr1 <- prop.table(f1)

f2 <- table(dados2$LOW)
fr2 <- prop.table(f2)

f1
fr1 * 100

f2
fr2 * 100