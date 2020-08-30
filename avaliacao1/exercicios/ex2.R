setwd("~/Documents/projects/UTFPR/probabilidade-e-estatistica-MA35B/PRE-AVAC/exercicio1")
dados <- read.csv(file="cancer.csv", sep=",")

boxplot(dados$Tempo~dados$Grau, ylab="tempo (dias)", xlab = "Grau", names=c("Bem dif", "Moder dif", "Pouc dif"))

tapply(dados$Tempo, dados$Grau, mean)
tapply(dados$Tempo, dados$Grau, median)

maxmin2 <- tapply(dados$Tempo, dados$Grau, range)
diff(maxmin$A)
diff(maxmin$B)

tapply(dados$Tempo, dados$Grau, sd)
tapply(dados$Tempo, dados$Grau, IQR)

"
Observando a tabela é possível concluir que a mediana do tempo de sobrevivência a partir do diagnóstico da doença é próxima, porém quando o grau é bem diferenciado, a mediana é menor
do que a dos outros dois graus.
A variabilidade dos graus moderadamente diferenciado e pouco diferenciado são praticamente a mesma e a do grau bem diferenciado é maior, o contrário do que acontece com a 
variábilidade máxima, que no grau bem diferenciada é menor do que o grau moderadamento diferenciado, que por sua vez é menor do que o grau pouco diferenciado. 
O grau pouco diferenciado possui um valor discrepante abaixo do valor mínimo, o moderadamente diferenciado, possui um abaixo do valor mínimo e dois acima do valor máximo e o bem 
diferenciado não possui nenhum valor discrepante. Portanto, aparentemente os três graus possuem tempos de sobrevivência parecidos, porém o tempo de sobrevivência máximo é maior
no grau pouco diferenciado, seguido pelo grau moderadamente diferenciado e por último, o bem diferenciado.
"