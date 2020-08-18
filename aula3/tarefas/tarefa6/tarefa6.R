setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa6")
dados <- read.csv(file = "cgd1.csv", sep = ",")

boxplot(dados$Tempo~dados$PH, ylab="Tempo", xlab="Heredietariedade", names=c("Autossomico", "X- linked"))
