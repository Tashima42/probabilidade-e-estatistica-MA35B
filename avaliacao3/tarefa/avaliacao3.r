setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao3/tarefa")

dados <- read.csv("corn.csv",sep=";",dec=".")

## 1

jpeg(file="norm-prod.jpeg")
qqnorm(dados$Producao,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(dados$Producao,col="red")
dev.off()
shapiro.test(dados$Producao)

jpeg(file="norm-custo.jpeg")
qqnorm(dados$Custo,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(dados$Custo,col="red")
dev.off()
shapiro.test(dados$Custo)

cor.test(dados$Producao,dados$Custo,method="pearson",conf.level=0.90)


## 2

ANOVA <- aov(dados$Custo~dados$Metodo)

jpeg(file="norm-anova.jpeg")
qqnorm(ANOVA$res,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(ANOVA$res,col="red")
dev.off()
shapiro.test(ANOVA$res)

library(lmtest)
bptest(ANOVA)
gqtest(ANOVA)
dwtest(ANOVA)

summary(ANOVA)[[1]][["Pr(>F)"]]
TukeyHSD(ANOVA,conf.level=0.90)
