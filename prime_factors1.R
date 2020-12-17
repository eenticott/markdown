prime_factors <- function(x) {
  factors = c()
  i = 2
  # Find the smallest factor of x
  while ((x %% i) != 0) {
    i = i + 1 }
  # Check if factor is a prime
  if (i == x) {
    return(x) }
  else {
    factors = append(factors, c(prime_factors(i), prime_factors(x/i)))
    return(factors)
  }
}