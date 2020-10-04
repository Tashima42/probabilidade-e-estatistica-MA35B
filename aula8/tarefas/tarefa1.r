setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula8/tarefas/")

dados <- read.csv("corn.csv",sep=";",dec=".")

install.packages("EnvStats")
library(EnvStats)

sqrt(varTest(dados$Custo,conf.level=0.99)$conf.int)