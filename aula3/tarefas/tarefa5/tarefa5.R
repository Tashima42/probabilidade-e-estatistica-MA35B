setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula3/tarefas/tarefa5")
dados <- read.csv(file = "lowbwt2.csv", sep = ";")
dados2 <- read.csv(file = "lowbwt6.csv", sep = ";")

#f.absolutas <- table(dados$LOW, dados$SMOKE)
#f.relativas <- prop.table(f.absolutas, 1)

#barplot(f.relativas, beside = T, col = c("blue", "red"), xlab="Fumar", ylab="Freq. relativa")
#legend("topright", fill = c("blue", "red"), legend=c("Normal", "Baixo"), bty="n")

f.absolutas <- table(dados2$UI, dados2$SMOKE)
f.relativas <- prop.table(f.absolutas, 1)

barplot(f.relativas, beside = T, col = c("blue", "red"), xlab="Fumar", ylab="Freq. relativa")
legend("topright", fill = c("blue", "red"), legend=c("N irrit", "Irrit"), bty="n")