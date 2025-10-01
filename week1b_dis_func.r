library(tidyverse)

# Poisson Distribution 
# 1. Define possible outcomes
foo <- tibble(x = seq(0,20), by = 1)

# 2. Choose parameters
lambda <- 1 

# 3. Calculate density 
foo <- mutate(foo, mass = dpois(x, lambda = lambda))

# 4. plot it 
ggplot(foo, aes(x, mass)) + 
  geom_line()



# Gamma Distribution 
# 1. Define possible outcomes
foo <- tibble(x = seq(0,10), by = 0.1)

# 2. Choose parameters

shape <- 2
rate <- 1
# 3. Calculate density 
foo <- mutate(foo, density = dgamma(x, shape = shape, rate = rate))

# 4. plot it 
ggplot(foo, aes(x, density)) + 
  geom_line()

