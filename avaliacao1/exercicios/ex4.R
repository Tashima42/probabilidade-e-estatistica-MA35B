setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao1/exercicios")
dados <- read.csv(file="cancer.csv", sep=",")

plot(dados$Idade,dados$Tempo,xlab="Idade (anos)",ylab="Tempo (dias)")

cor(dados$Idade,dados$Tempo,method="pearson")
cor(dados$Idade,dados$Tempo,method="spearman")
cor(dados$Idade,dados$Tempo,method="kendall")

tapply(dados$Tempo, dados$Idade, mean)
tapply(dados$Tempo, dados$Idade, median)

maxmin4 <- tapply(dados$Tempo, dados$Idade, range)
diff(maxmin$A)
diff(maxmin$B)

tapply(dados$Tempo, dados$Idade, sd)
tapply(dados$Tempo, dados$Idade, IQR)

"
Observando o comportamento do gráfico de dispersão bidimensional, não é possível identificar nenhuma correlação entre a idade e o tempo de sobrevivência.
O mesmo ocorre os coeficientes de correlação, que apontam uma correlação nula entre a idade do indivíduo e o tempo de sobrevivência.
"