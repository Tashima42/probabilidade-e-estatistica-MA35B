setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/tarefas/tarefa4")
seringueiraData <- read.csv(file = "seringueira.csv", sep = ";", dec = ".")

# Defining variables to data
seringueiraDataAltura <- seringueiraData$Altura
seringueiraDataLocal <- seringueiraData$Local

# Calc
seringueiraDataGeneralSD <- sd(seringueiraDataAltura)
seringueiraDataAlturaPerLocal <- tapply(seringueiraDataAltura, seringueiraDataLocal, sd)

# Show on console
seringueiraDataGeneralSD
seringueiraDataAlturaPerLocal