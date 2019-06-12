dp_sample_data <- function(dp){
  # this F is a probability mass function where each s[i] has mass w[i]
  function (size=1e4) {
    sample(dp$s, size, prob=dp$w, replace=TRUE)
  }
}