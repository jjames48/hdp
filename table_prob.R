table_prob <- function(support, data){
  output <- rep(0, length(support))
  names(output) <- support
  
  tab <- table(data)
  tab <- tab/sum(tab)
  
  for(i in 1:length(tab)){
    ind <- which(names(output) == names(tab)[i])
    if(length(ind)>0){output[ind] = tab[i]}
  }
  
  output
}