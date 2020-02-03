#calculate YTM
yield2 <- read.csv('Jan2.csv')
attach(yield2) #不用再取变量了 可以直接用csv的variable
# yield2$变量 取变量
#               parameter
#f.ytm2 = function(coupon.price, maturity, price){
#  notional <- (coupon.price + 100) * exp( - calyield * maturity/12)
#  maturity <- maturity - 6 
#  while( maturity > 0 )
#    {notional <- notional + coupon.price * exp(-calyield * maturity/12 )
#       maturity <- maturity - 6 }
#  price = notinal
#  uniroot(calyield, interval = (0,25)) }
#uniroot(ytm2, interval = c(0,25))

#所有日期放进一个vector
vectorMaturity <- c(maturityY)
# 加元素进入 vector：      vectorMaturity <-append(vectorMaturity, 1)
#对每个日期开始进行算ytm
for (maturitys in vectorMaturity) {
  # Create cash flow vector
  cfs <- seq(maturitys,0,-6)
}

#detach(AllCountries)