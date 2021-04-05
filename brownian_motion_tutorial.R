# Katie Saund
# Copying http://www.phytools.org/eqg/Exercise_4.1/ by Liam Revell

# Set up number of discrete time generations
time <- 0:100
# Variance of the diffusion process is sig2 per generation
sig2 <- 0.01
# Draw a set of random deviates from a normal distribution
set.seed(1)
x <- rnorm(n = length(time) - 1, sd = sqrt(sig2))
x <- c(0, cumsum(x))
plot(time, x, type = "l", ylim = c(-2, 2))

# Repeat with more simulations
nsim <- 100
set.seed(1)
X <- matrix(rnorm(n = nsim * (length(time) - 1), sd = sqrt(sig2)), nsim, length(time) - 
              1)
X <- cbind(rep(0, nsim), t(apply(X, 1, cumsum)))
plot(time, X[1, ], xlab = "time", ylab = "phenotype", ylim = c(-2, 2), type = "l")
apply(X[2:nsim, ], 1, function(x, time) lines(time, x), t = time)

plot(time, X[1, ], xlab = "time", ylab = "phenotype", ylim = c(-2, 2), type = "l")
apply(X[2:nsim, ], 1, function(x, time) lines(time, x), t = time)

# now divide sigma by 10
set.seed(1)
X <- matrix(rnorm(n = nsim * (length(time) - 1), sd = sqrt(sig2/10)), nsim, length(time) - 
              1)
X <- cbind(rep(0, nsim), t(apply(X, 1, cumsum)))
plot(time, X[1, ], xlab = "time", ylab = "phenotype", ylim = c(-2, 2), type = "l")
apply(X[2:nsim, ], 1, function(x, time) lines(time, x), t = time)

plot(time, X[1, ], xlab = "time", ylab = "phenotype", ylim = c(-2, 2), type = "l")
apply(X[2:nsim, ], 1, function(x, time) lines(time, x), t = time)

# now time to work with a phylogenetic tree and continous time
library(phytools)
time <- 100  # total time
n <- 30  # total taxa
b <- (log(n) - log(2))/time
tree <- pbtree(b = b, n = n, t = time, type = "discrete")
plot(tree)
