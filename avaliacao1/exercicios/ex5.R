setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/PRE-AVAC/exercicio1")
dados <- read.csv(file="cancer.csv", sep=",")

f.absolutas <- table(dados$Grau, dados$Local)
f.relativas <- prop.table(f.absolutas, 1)

barplot(f.relativas, beside=T, col=c("red", "green", "blue"), xlab="Local", ylab="Grau", names.arg = c("Arco faucial", "Fossa tonsilar", "Faringe"))
legend("topleft",fill=c("red", "green", "blue"),legend=c("Bem diferenciado","Moderadamente diferenciado", "Pouco diferenciado"),bty="n")

"
"