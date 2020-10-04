setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula8/exercicios/")

dados <- read.csv("Dieta.csv",sep=";",dec=".")

DietaA <- dados[dados$Dieta=="A",]

install.packages("EnvStats")
library(EnvStats)

sqrt(varTest(DietaA$Perda,conf.level=0.95)$conf.int)