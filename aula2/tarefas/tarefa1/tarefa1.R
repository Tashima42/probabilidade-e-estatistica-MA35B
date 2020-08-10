setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/aula2/tarefas/tarefa1")
cornData <- read.csv(file = "corn.csv", sep = ";")

# Defing variables to data
cornDataMetodo <- cornData$Metodo
cornDataProducao <- cornData$Producao
cornDataCusto <- cornData$Custo

# Calc
cornCustoMedian <- median(cornDataCusto)
cornCustoMedianPerMetodo <- tapply(cornDataCusto, cornDataMetodo, median)

# Show data on console
cornCustoMedian
cornCustoMedianPerMetodo
