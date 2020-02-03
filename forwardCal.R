spotRate <- read.csv('spotRate.csv')
show(spotRate)
#for calculating forward rate, we will use the calculated spot rate before
#and using the formula for the 1- year forward rate1-2 F12= (R2 * T2 - R1 * T1) / T2 - T1
spotRate_y1 <- spotRate$X1Y
spotRate_y2 <- spotRate$X2Y
spotRate_y3 <- spotRate$X3Y
spotRate_y4 <- spotRate$X4Y
spotRate_y5 <- spotRate$X5Y
#F12,F13,F14,F15
F12 <- (spotRate_y2 * 2 - spotRate_y1 * 1) / (2 - 1)
F13 <- (spotRate_y3 * 3 - spotRate_y1 * 1) / (3 - 1)
F14 <- (spotRate_y4 * 4 - spotRate_y1 * 1) / (4 - 1)
F15 <- (spotRate_y5 * 5 - spotRate_y1 * 1) / (5 - 1)
F12
F13
F14
F15
years <- c(2,3,4,5)
plot(years, F12 ,type = "o",col = "red", xlab = "year", ylab = "foward rate", main = "foward curve")
lines(years, F12, type = "o", col = "orange")
lines(years, F13, type = "o", col = "black")
lines(years,F14, type = "o", col = "green")
lines(years,F15, type = "o", col = "cyan")

