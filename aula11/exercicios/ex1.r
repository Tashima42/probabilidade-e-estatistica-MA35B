setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula11/exercicios")

dados <- read.csv("anova.csv",sep=";",dec=",")

ANOVA <- aov(dados$Durabilidade~dados$Tipo)

qqnorm(ANOVA$res)
qqline(ANOVA$res,col="red")

install.packages("lmtest")
library(lmtest)

shapiro.test(ANOVA$res)

bptest(ANOVA)
gqtest(ANOVA)

dwtest(ANOVA)

summary(ANOVA)[[1]][["Pr(>F)"]]

TukeyHSD(ANOVA, conf.level=0.90)
