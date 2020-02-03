#spot rate calculation
# pick the coupon rate and clean price for first bond
cRate1 <- 0.025
cRrice1 <- 99.94
#get the dirty price first for each bond, generally ai = n/365 * cRate 
ai <- 87/365 * cRate1
dPrice1 <- cPrice11 + ai
# for maturities less than 6 months, all coupons are zero-coupon bonds, therefore, 
# using formula for r1 = -log(dPrice/100+cPrice)
r1 <- -log(dPrice1/100+cPrice1)
# then calculate the second spot rate in year i 
# pick the coupon rate and clean price for second bond
cRate2 <- 0.0175
cPrice2 <- 99.87
#repeat the process before to get the dirty price for the sencond bond dPrice2
#then we need to solve r2 using uniroot
# insert the cash flow cf , c(dirty price, coupon, coupon, ..., 100+coupon)
cf <- c(-dPrice, 0.875,100.875)
# Create bond valuation function with continuously compounding
# futhur explanation: for the bond which has 2 cash flow, we need to solve r2 in the following equation
# dPrice2 = cf[1] * exp(-r1 * t1) + cf[2] exp(-r2 * t2) 
valueOfBondi <- function(ri, cf, t=seq(along = cf)/2 ) # ri for i = 1 ,2 ,... , n cash flow 
  sum(cf * exp(-ri * t)) 
r2 <- function(cf) {
  uniroot(bondV, c(0, 1), cf = cf)$root
}
# Then repeat the same process from line 17-26 to get r3, r4, ...., r10 

