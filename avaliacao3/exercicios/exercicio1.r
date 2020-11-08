setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao3/exercicios")

dados <- read.csv("cancer.csv",sep=";",dec=",")

tratamentoA <- dados[dados$Tratamento=="A",]
tratamentoB <- dados[dados$Tratamento=="B",]

# a) O tempo de sobrevivência (Tempo) é afetado pelo tipo de tratamento (Tratamento);

qqnorm(tratamentoA$Tempo,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(tratamentoA$Tempo,col="red")
shapiro.test(tratamentoA$Tempo)


qqnorm(tratamentoB$Tempo,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(tratamentoB$Tempo,col="red")
shapiro.test(tratamentoB$Tempo)