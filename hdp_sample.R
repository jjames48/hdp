hdp_sample <- function(alpha, kappa, H, nodes){
  dp_parent_samp <- dp(alpha, H)()

  hdp <- list("H" = dp_parent_samp)

  G <- DiscreteDistribution(dp_parent_samp$s, dp_parent_samp$w)
  for (i in 1:nodes){
    hdp[[i+1]] <- dp(kappa, G)()
    names(hdp)[i+1] <- paste("node_", i, sep = "")
  }

  hdp
}
