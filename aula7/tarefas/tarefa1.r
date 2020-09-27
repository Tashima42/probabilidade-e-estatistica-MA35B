setwd("/home/tashima/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula7/tarefas/")
data <- read.csv("lowbwt3.csv", sep=";", dec=".")

t.test(data$LWT, conf.level=0.99)$conf.int

install.packages("BSDA")
library(BSDA)
z.test(data$LWT, sigma.x=20, conf.level=0.99)$conf.int