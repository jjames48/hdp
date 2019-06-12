dp_aggregate <- function(dp){
  dp_agg <- aggregate(dp$w, by = list(dp$s), sum)
  names(dp_agg) <- c("s", "w")
  dp_agg
}