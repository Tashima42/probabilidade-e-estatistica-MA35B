setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/tarefas/tarefa2")
laheartData = read.csv(file="laheart.csv", sep = ";")

# Defining variables to data
laheartDataPeso <- laheartData$Peso
laheartDataColesterol <- laheartData$Colesterol
laheartDataStatus <- laheartData$Status


# calc
laheartDataColesterolMean <- mean(laheartDataColesterol)
laheartDataColesterolMeanPerSatus <- tapply(laheartDataColesterol, laheartDataStatus, mean)

# Print on console
laheartDataColesterolMean
laheartDataColesterolMeanPerSatus