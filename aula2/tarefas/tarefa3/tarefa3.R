setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/tarefas/tarefa3")
cgdData <- read.csv(file = "cgd1.csv", sep = ",", dec = ".")

# Defining variables to data
cgdDataTratamento <- cgdData$Tratamento
cgdDataPH <- cgdData$PH
cgdDataSexo <- cgdData$Sexo
cgdDataTempo <- cgdData$Tempo

# Calc
cgdDataGeneralAmplitude <- diff(range(cgdDataTempo))
cgdDataRangePH <- tapply(cgdDataTempo, cgdDataPH, range)
cgdDataPHXAmplitude <- diff(cgdDataRangePH$X)
cgdDataPHAAmplitude <- diff(cgdDataRangePH$A)

# Show on console
cgdDataGeneralAmplitude
cgdDataPHAAmplitude
cgdDataPHXAmplitude