setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/PRE-AVAC/exercicio1")
dados <- read.csv(file="cancer.csv", sep=",")

boxplot(dados$Tempo~dados$Local, ylab="tempo (dias)", xlab = "Local", names=c("Arco faucial", "Fossa tonsilar", "Faringe"))

tapply(dados$Tempo, dados$Local, mean)
tapply(dados$Tempo, dados$Local, median)

maxmin3 <- tapply(dados$Tempo, dados$Local, range)
diff(maxmin$A)
diff(maxmin$B)

tapply(dados$Tempo, dados$Local, sd)
tapply(dados$Tempo, dados$Local, IQR)

"

"