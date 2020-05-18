disad <- function() {
  return(min(sample(1:20, 2, replace = T)))
}

ad <- function() {
  return(max(sample(1:20, 2, replace = T)))
}

ad_of_disad <- function() {
  return(max(disad(), disad()))
}

disad_of_ad <- function() {
  return(min(ad(), ad()))
}


n <- 10^5

X <- replicate(n, ad_of_disad())
Y <- replicate(n, disad_of_ad())

K <- (1:20) - 1

YRCdf <- 1 - K^2 / 200 + K^4 / 160000
names(YRCdf) <- 1:20
XRCdf <- 1 - K^2 / 100 + K^3/2000 - K^4/160000
names(XRCdf) <- 1:20
SRCdf <- (20 - K) / 20
names(SRCdf) <- 1:20

