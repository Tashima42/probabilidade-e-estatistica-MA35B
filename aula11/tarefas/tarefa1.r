setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula11/tarefas")

dados <- read.csv("seringueira.csv",sep=";",dec=".")

anova <- aov(dados$Producao~dados$Local)

install.packages("lmtest")
library(lmtest)

shapiro.test(anova$res)

bptest(anova)
gqtest(anova)

dwtest(anova)

summary(anova)[[1]][["Pr(>F)"]]

TukeyHSD(anova, conf.level=0.90)
