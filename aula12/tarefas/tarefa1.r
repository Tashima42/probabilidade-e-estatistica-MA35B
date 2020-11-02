setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula12/tarefas")

dados <- read.csv("corn.csv",sep=";",dec=".")

a <- dados[dados$Metodo=="A",]
b <- dados[dados$Metodo=="B",]
c <- dados[dados$Metodo=="C",]
d <- dados[dados$Metodo=="D",]

ANOVA <- aov(dados$Custo~dados$Metodo)

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

n <- nrow(dados)
plot(1:n,residos,type="b") #Grafico da ordem vs residuos
dwtest(ANOVA) #Teste de independencia de Durbin-Watson

install.packages("agricolae")
library(agricolae)

K.teste <- kruskal(dados$Custo,dados$Metodo)
K.teste$statistics
K.teste$groups
