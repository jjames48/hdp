stick_breaking <- function(iter, alpha, d){
  sticks <- c()
  budget <- 1
  for (i in 1:iter){
    beta <- rbeta(1, 1-d, alpha+d*i)
    sticks[i] <- beta*budget
    budget <- budget*(1-beta)
  }
  sticks
}