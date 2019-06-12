plot_hdp <- function(hdp_sample){
  
  hdp <- dp_aggregate(hdp_sample[[1]])
  plot(hdp$w~hdp$s, type = 'h', ylab = "weight", ylim = c(0,1), xlab = "partition")
  
  for(i in 2:length(hdp_sample)){
    hdp <- dp_aggregate(hdp_sample[[i]])
    lines(hdp$w~hdp$s, type = 'p', col = i)  
  }
}