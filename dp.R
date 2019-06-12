dp <- function(alpha, F0, n=1e3) { # n should be large since it's an approx for +oo
  
  function(){
    s <- cdf_sample(F0,n)            # step 1: draw from F0
    w <- stick_breaking(n, alpha, d=0)    # step 2: compute 'stick breaking process' into w[i]
    
    data.frame(s,w)
  }
  
}
