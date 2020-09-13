# Aplicação dos modelos de probabilidade: Ajusete de dados aos modelos de probabilidade contínuos

Uma ferramento muito útil na descrição de variáveis é o historiograma, são retângulos contíguos com base nas faixas de valores da variável,  a altura de cada retângulo é determinada pela densidade de frequência.

**No software R**
```R
tempo <- c(1377,790,250,6890,150,11812,273,1140,1317,4713,1607,4193,2966,3570,1589,5089,
          5803,819,8439,5327,4034,1056,1416,10265,8318,1185,3409,2656,622,1149,9965,
          1908,6881,8911,2851,1017,5488,758,2358,3626,404,11269,7709,2142,6319,571,825,
          1200,1680,595)

hist(tempo, freq=F,xlab = "Tempo (em dias)", ylab = "Frequência Relativa", main = "")
```
Em r, a função `hist` é usada para gerar um historiograma. Nela, `tempo` é o set de dados do qual se quer obter o historiograma, `freq` define se o hist será construído utilizando a frequênca realtiva ou absoluta, `freq=T` para absoluta e `freq=F` para relativa. `xlab` e `ylab` para atribuir os nomes dos eixos e `main` o titulo de dentro do gráfico.