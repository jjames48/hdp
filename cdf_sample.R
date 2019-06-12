# emp_cdf is an object of class "DiscreteDistribution"
cdf_sample <- function(emp_cdf, n=1e3) {
  emp_cdf@r(n)
}