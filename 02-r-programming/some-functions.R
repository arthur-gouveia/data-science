#Soma dois valores
add2 <- function(x, y) {
    x + y
}

#Retorna os numeros de vect que sao maiores que n 
above <- function(vect, n = 10) {
  vect[vect > n]
}

#Calcula a media dos dados de cada coluna de df
columnmeans <- function(df, removeNA = TRUE) {
    nc <- ncol(df)          #numero de colunas
    means <- numeric(nc)    #vetor que irá conter as medias
    for(i in 1:nc) { #loop por todas as colunas armazenando as medias
        means[i] <- mean(df[,i], na.rm = removeNA)
    }
    means
}