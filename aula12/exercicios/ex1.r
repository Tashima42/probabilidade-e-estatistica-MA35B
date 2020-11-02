setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/exercicios")

dadosPare <- read.csv("pareado.csv",sep=";",dec=",")
dadosInde <- read.csv("independente.csv",sep=";",dec=",")
dadosKrus <- read.csv("kruskal.csv",sep=";",dec=",")

##################################################################

antes <- dadosPare[dadosPare$Intervencao=="Antes",]
depois <- dadosPare[dadosPare$Intervencao=="Depois",]

qqnorm(antes$Peso,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(antes$Peso,col="red")
shapiro.test(antes$Peso)

qqnorm(depois$Peso,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(depois$Peso,col="red")
shapiro.test(depois$Peso)

wilcox.test(dadosPare$Peso~dadosPare$Intervencao,paired=T)

##################################################################
DietaA <- dadosInde[dadosInde$Dieta=="A",]
DietaB <- dadosInde[dadosInde$Dieta=="B",]

qqnorm(DietaA$Perda,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(DietaA$Perda,col="red")
shapiro.test(DietaA$Perda)

qqnorm(DietaB$Perda,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(DietaB$Perda,col="red")
shapiro.test(DietaB$Perda)

wilcox.test(dadosInde$Perda~dadosInde$Dieta)

##################################################################

ANOVA <- aov(dadosKrus$Altura~dadosKrus$Adubo)

residos <- ANOVA$res

qqnorm(residos,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(residos,col="red")
shapiro.test(residos)

preditos <- predict(ANOVA)
plot(residos,preditos)
install.packages("lmtest")
library(lmtest)
bptest(ANOVA)
gqtest(ANOVA)

n <- nrow(dadosKrus)
plot(1:n,residos,type="b") #Grafico da ordem vs residuos
dwtest(ANOVA) #Teste de independencia de Durbin-Watson

install.packages("agricolae")
library(agricolae)

K.teste <- kruskal(dadosKrus$Altura,dadosKrus$Adubo)
K.teste$statistics
K.teste$groups

##################################################################

peso     <- c(56,58,70,72,81,92,95,100,104,112)
glicemia <- c(71,78,79,85,85,102,110,176,181,318)

qqnorm(peso,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(peso,col="red")
shapiro.test(peso)

qqnorm(glicemia,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(glicemia,col="red")
shapiro.test(glicemia)

cor.test(peso,glicemia,method="spearman")
cor.test(peso,glicemia,method="kendall")

#########################################################################################
# Teste Qui-quadrado (Alternativa a Regressao Logistica)
#########################################################################################

dados  <- read.csv("dados.csv",sep=";",dec=",")

chisq.test(table(dados$Dieta,dados$Hipertensao))
