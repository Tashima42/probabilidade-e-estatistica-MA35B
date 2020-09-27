setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula7/tarefas/")
data <- read.csv("ac.csv", sep=";", dec=",")

t.test(data$AbdCirc,conf.level=0.90)$conf.int
