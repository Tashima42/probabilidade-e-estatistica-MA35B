tempo <- c(1377,790,250,6890,150,11812,273,1140,1317,4713,1607,4193,2966,3570,1589,5089,
          5803,819,8439,5327,4034,1056,1416,10265,8318,1185,3409,2656,622,1149,9965,
          1908,6881,8911,2851,1017,5488,758,2358,3626,404,11269,7709,2142,6319,571,825,
          1200,1680,595)

media <- mean(tempo)
x <- seq(0,12000,by=1)
fteorico <- dexp(x, rate=1 / media)

hist(tempo, freq=F,xlab = "Tempo (em dias)", ylab = "Frequência Relativa", main = "")
lines(x, fteorico, col="red")^