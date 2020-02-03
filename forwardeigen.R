matrixY <- read.csv('forwardMatrix.csv')
head(matrixY)
Y=data.matrix(matrixY)
y =cov(Y)
eigeny<- eigen(y)
eigeny
eigeny$values
