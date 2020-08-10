setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/tarefas/tarefa5")
shock3Data <- read.csv(file = "shock3.csv", sep = ";", dec = ".")

# Defining variables to data
shock3RCI <- shock3Data$RCI
shock3HG <- shock3Data$HG
shock3Tempo <- shock3$Tempo

# Calc
shock3GeneralIIQ <- IQR(shock3HG)
shock3IIQPerTempo <- tapply(shock3HG, shock3Tempo, IQR)

# Show on console
shock3GeneralIIQ
shock3IIQPerTempo