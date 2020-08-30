setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao1/avaliacao")
d <- read.csv(file="lowbwt1.csv", sep=";", dec=",")

jpeg("boxplot-idadeXpeso.jpg")
boxplot(d$AGE~d$LOW, ylab="Idade", xlab="Peso", names=c("Normal", "Abaixo"))
graphics.off()

tapply(d$AGE, d$LOW, mean)

tapply(d$AGE, d$LOW, median)

tapply(d$AGE, d$LOW, sd)

maxmin <- tapply(d$AGE, d$LOW, range)
diff(maxmin$"0")
diff(maxmin$"1")

tapply(d$AGE, d$LOW, IQR)