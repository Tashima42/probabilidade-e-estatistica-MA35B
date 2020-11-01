setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula11/tarefas")

dados <- read.csv("cgd3.csv",sep=";",dec=".")

anova <- aov(dados$Idade~dados$Tempo)
shapiro.test(anova$res)

qqnorm(ANOVA$res)
qqline(ANOVA$res,col="red")

summary(anova)[[1]][["Pr(>F)"]]

cor.test(dados$Idade,dados$Tempo,method="pearson",conf.level=0.95)
