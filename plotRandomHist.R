#* plotRandomHist.R
#*
#* Author: RJ Worrall
#* 
#* Purpose: create a funciton that generates a 
#* random sample of normal observations and plots
#* a histogram of those observations
#*
#* Set seed sets rnorm results to be the same every time.
#*  Results will change with a different seed
#*  
#*  Inputs: num_pts: number of observations to generate
#*  mu : theoretical mean of the normal
#*  sigma: theoretical standard deviation of the normal
#*  seed: random number generation seed, to ensure reproducibility
#*  
#*  Outputs: A plot of the histogram and a line depicting the sample mean
#*  as well as a list of the vector of normals, sample mean, 
#*  and standard deviation of those normals

plotRandom <- function(num_pts, mu, sigma, seed, Color) {
  set.seed(seed)
  norms <- rnorm(num_pts, mu, sigma)
  mean_norms <- mean(norms)
  sd_norms <- sd(norms)
  hist(norms)
  abline(v=mean_norms,col=Color, lwd=5)
  list_norms <- list(norms, mean_norms, sd_norms)
  return(list_norms)
  
  # The last line of code in the function is the output
}

help("RNG")