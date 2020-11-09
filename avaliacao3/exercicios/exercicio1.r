setwd("C:/Users/pedro/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/avaliacao3/exercicios")

dados <- read.csv("cancer.csv",sep=";",dec=",")

tratamentoA <- dados[dados$Tratamento=="A",]
tratamentoB <- dados[dados$Tratamento=="B",]

# a) O tempo de sobrevivência (Tempo) é afetado pelo tipo de tratamento (Tratamento);

jpeg(file="norm-trtA.jpeg")
qqnorm(tratamentoA$Tempo,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(tratamentoA$Tempo,col="red")
dev.off()
shapiro.test(tratamentoA$Tempo)

jpeg(file="norm-trtB.jpeg")
qqnorm(tratamentoB$Tempo,ylab="Quantis Observados",xlab="Quantis Teóricos")
qqline(tratamentoB$Tempo,col="red")
dev.off()
shapiro.test(tratamentoB$Tempo)

var.test(dados$Tempo~dados$Tratamento)$p.value

t.test(dados$Tempo~dados$Tratamento,var.equal=TRUE,conf.level=0.90)
