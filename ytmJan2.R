# the process for calculating the YTM for each bond (number is specific for one bond)
# pick the coupon rate and clean price for each bond
crate <- 0.0175
cprice <- 99.87
# accrued interest for n/12 (n months/ 12 months)pick n=5 
ai <- 5/12 * crate
# the process to calculate dirty price 
dPrice <- cprice + ai
# insert the cash flow cf , c(dirty price, coupon, coupon, ..., 100+coupon)
cf <- c(-dPrice, 0.875,0.875,0.875,0.875,0.875,100.875)
# Create bond valuation function with continuously compounding
bval <- function(ytm, cf, t=seq(along = cf)/2 )
  sum(cf * exp(-ytm * t))
# Create ytm() function using uniroot
ytm <- function(cf) {
  uniroot(bval, c(0, 1), cf = cf)$root
}
#get the result of ytm %
ytm(cf) * 100

