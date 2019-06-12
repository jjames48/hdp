dp_posterior <- function(alpha, F0, X, K=50) {
  n <- length(X)
  F_n <- table(X)/sum(table(X)) # compute empirical cdf

  sup <- F0@support
  pri_prob <- table_prob(sup, F0@r(1e5))
  emp_prob <- table_prob(sup, X)

  p_bar <- n/(n+alpha) * emp_prob + alpha/(n+alpha) * pri_prob
  sup <- 1:K
  F_bar <- DiscreteDistribution(sup, p_bar)

  dp(alpha+n, F_bar)
}
