# the process for calculating the YTM for each bond (number is specific for one bond)
# pick the coupon rate and clean price for each bond
crate <- 0.0175
cprice <- 99.87
# accrued interest for n/365 (n days/ 365 days)pick n=87 
ai <- 87/365 * crate
# the process to calculate dirty price 
dPrice <- cprice + ai
# insert the cash flow cf , c(dirty price, coupon, coupon, ..., 100+coupon)
cf <- c(-dPrice, 0.875,0.875,0.875,0.875,0.875,100.875)
# Create bond valuation function with continuously compounding
bondV <- function(ytm, cf, t=seq(along = cf)/2 )
  sum(cf * exp(-ytm * t))
# Create ytm() function using uniroot
ytm <- function(cf) {
  uniroot(bondV, c(0, 1), cf = cf)$root
}
#get the result of ytm %
ytm(cf) * 100

