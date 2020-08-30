setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao1/avaliacao")
d <- read.csv(file="lowbwt1.csv", sep=";", dec=",")

f.absolutas <- table(d$RACE, d$LOW)
f.relativas <- prop.table(f.absolutas, 1)

f.absolutas
f.relativas

jpeg("barplot.jpg")
barplot(f.relativas, beside=T, col=c("red", "green", "blue"), xlab="Peso", ylab="Gênero", names.arg = c("Normal","Abaixo"))
legend("topright",fill=c("red", "green", "blue"),legend=c("Branca", "Negra", "Outras"),bty="n")
graphics.off()