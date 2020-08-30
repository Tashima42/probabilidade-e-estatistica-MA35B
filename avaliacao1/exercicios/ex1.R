setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/PRE-AVAC/exercicio1")
dados <- read.csv(file="cancer.csv", sep=",")

boxplot(dados$Tempo~dados$Tratamento, ylab="tempo (dias)", xlab = "Tratamento", names=c("Padrão", "Teste"))

tapply(dados$Tempo, dados$Tratamento, mean)
tapply(dados$Tempo, dados$Tratamento, median)

maxmin1 <- tapply(dados$Tempo, dados$Tratamento, range)
diff(maxmin$A)
diff(maxmin$B)

tapply(dados$Tempo, dados$Tratamento, sd)
tapply(dados$Tempo, dados$Tratamento, IQR)

"
Observando a tabela, é possível concluir que a mediana do tempo de vida após o diagnóstico dos indivíduos submetidos ao tratamento padrão
e ao tratamento teste é praticamente a mesma (linha central), também é possível concluir que a variabilidade do tratamento teste é menor do que o 
do tratamento padrão (caixas com tamanhos diferentes), o mesmo ocorre com a variabilidade máxima (distância entre os valores máximos e mínimos). 
Ambos possuem valores discrepantes, porém o tratamento padrão possui apenas um, enquanto que o tratamento teste possui cinco, sendo três acima do valor máximo 
e dois abaixo do valor mínimo. Portanto, aparentemente os dois tratamentos possuem uma eficiência parecida.
" 