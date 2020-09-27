setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula7/exercicios/")

dados <- read.csv("Dieta.csv",sep=";",dec=".")

#######################################################################################
# Intervalo de Confiança Para a Média e Variância Populacionais
#######################################################################################

# Idade Gestacional

DietaA <- dados[dados$Dieta=="A",]
qqnorm(DietaA$Perda,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(DietaA$Perda,col="red")

t.test(DietaA$Perda,conf.level=0.95)$conf.int

install.packages("BSDA")
library(BSDA)
z.test(DietaA$Perda,sigma.x=8.5,conf.level=0.95)$conf.int

install.packages("EnvStats")
library(EnvStats)
varTest(DietaA$Perda,conf.level=0.95)$conf.int
sqrt(varTest(DietaA$Perda,conf.level=0.95)$conf.int)

#######################################################################################
# Intervalo de Confiança Para a Proporção Populacional
#######################################################################################

tabela <- table(DietaA$Hipertensao)

prop.test(tabela[1],sum(tabela),conf.level=0.95)$conf.int

#######################################################################################
# Teste de Hipoteses Para a Media Populacional
#######################################################################################

perda <- dados$Perda
qqnorm(perda)
qqline(perda,col="red")
shapiro.test(perda)

t.test(perda,mu=20,conf.level=0.90)

library(BSDA)
z.test(perda,sigma.x=8.5,mu=20,conf.level=0.90)

#######################################################################################
# Teste de Hipoteses Para a Variancia Populacional
#######################################################################################

library(EnvStats)
varTest(perda,sigma.squared=8.5^2,conf.level=0.90)
sqrt(varTest(perda,conf.level=0.90)$conf.int)

#######################################################################################
# Teste de Hipoteses Para a Proporcao Populacional
#######################################################################################

tabela <- table(dados$Hipertensao)
prop.test(tabela[1],sum(tabela),p=0.35,conf.level=0.90)

#######################################################################################
# Comparacao Entre Duas Medias
#######################################################################################

# Comparando preco/m2 (desvios padrao populacionais: DP.RC=71 e DP.RO=82)

RC <- c(41.2,40.5,39.6,39.4,38.9,39.1,40.9,41.2,40.4,40.6,40.3,39.2,40.6,39.7,40.3,40.9,
        39.6,39.7,40.0,41.2)*100
RO <- c(37.2,34.9,38.1,35.4,35.7,37.7,36.4,36.6,36.1,37.4,36.1,35.9,36.9,37.4,37.5,38.0,
        36.8,36.4)*100

qqnorm(RC)
qqline(RC,col="red")
shapiro.test(RC)

qqnorm(RO)
qqline(RO,col="red")
shapiro.test(RO)

DP.RC <- 71
DP.RO <- 82

library(BSDA)
z.test(RC,RO,sigma.x=DP.RC,sigma.y=DP.RO,conf.level=0.90)

# Comparando nivel serico de ferro em umol/l

fibrose.cistica <- c(13.78,18.01,19.65,19.66,12.64,11.53,13.44,18.31,15.4,14.92,10.06,14.62,13.97)
      saudaveis <- c(26.04,30.42,11.53,29.08,19.82,16.01,20.39,21.46,6.95,20.5,30.2)

qqnorm(fibrose.cistica)
qqline(fibrose.cistica)
shapiro.test(fibrose.cistica)

qqnorm(saudaveis)
qqline(saudaveis)
shapiro.test(saudaveis)

var.test(saudaveis,fibrose.cistica,conf.level=0.90)
t.test(saudaveis,fibrose.cistica,var.equal=FALSE,conf.level=0.90)

# Comparando pressao sistolica em mm/Hg

          Placebo <- c(211,210,210,203,196,190,191,177,173,170,163)
Hidroclorotiazida <- c(181,172,196,191,167,161,178,160,149,119,156)

qqnorm(Placebo)
qqline(Placebo,col="red")
shapiro.test(Placebo)

qqnorm(Hidroclorotiazida)
qqline(Hidroclorotiazida,col="red")
shapiro.test(Hidroclorotiazida)

t.test(Placebo,Hidroclorotiazida,paired=TRUE,conf.level=0.99)

# Comparando Proporcao de Perda de Peso em %

DietaA <- dados[dados$Dieta=="A",]
DietaB <- dados[dados$Dieta=="B",]

qqnorm(DietaA$Perda)
qqline(DietaA$Perda,col="red")
shapiro.test(DietaA$Perda)

qqnorm(DietaB$Perda)
qqline(DietaB$Perda,col="red")
shapiro.test(DietaB$Perda)

var.test(dados$Perda~dados$Dieta,conf.level=0.90)

t.test(Perda~Dieta,data=dados,var.equal=TRUE,conf.level=0.90)

#########################################################################################
# Teste de correlacao
#########################################################################################

qqnorm(dados$Perda)
qqline(dados$Perda,col="red")
shapiro.test(dados$Perda)

qqnorm(dados$Idade)
qqline(dados$Idade,col="red")
shapiro.test(dados$Idade)

cor.test(dados$Perda,dados$Idade,method="pearson",conf.level=0.90)