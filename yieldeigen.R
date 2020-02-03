matrixYi <- read.csv('yieldMatrix.csv')
head(matrixYi)
Yi=data.matrix(matrixYi)
yi =cov(Yi)
eigenyi<- eigen(yi)
eigenyi
eigenyi$values
