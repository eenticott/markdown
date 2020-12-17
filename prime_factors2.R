prime_factors2 <- function(n){
  factors <- c()
  i <- 2
  r <- n
  while(prod(factors) != n){
    if(r%%i == 0) {
      factors <- c(factors,i)
      r <- r/i
    }
    i <- i+1
  }
  return(factors)
}