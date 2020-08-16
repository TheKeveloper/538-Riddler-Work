# simulation approach
get_cuts <- function() {
  points <- runif(3)
  return(sort(points))
}

get_middle_length <- function(cuts) {
  if(cuts[1] >= 0.5) {
    return(cuts[1])
  }
  for(i in 2:length(cuts)) {
    if(cuts[i] >= 0.5){
      return(cuts[i] - cuts[i-1])
    }
  }
  return(1 - cuts[length(cuts)])
}

n <- 10^6
lengths <- numeric(n)
for(i in 1:n) {
  lengths[i] <- get_middle_length(get_cuts())
}
mean(lengths)

# analytical approach
c(5/8, 5/12, 5/12, 5/8) %*% dbinom(0:3, 3, 0.5)
