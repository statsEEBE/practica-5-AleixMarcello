#población
mu = 95.3
sigma <- 5.7

#curve(dnorm(x, mean = mu, sd =sigma), xlim=c(80, 120))

#set.seed(123)
#muestra aleatoria de tamaño 4
#rnorm(4, mu, sigma)      

#(a)
####
y <- function(i)sum(rnorm(4, mu, sigma))
y(1)              
y10000 <- sapply(1:10000, y)
hist(y10000)
mean(y10000)
####
4*mu

#(b)
4*sigma^2
###
var(y10000)
###

#(c)
1- pnorm(103, mu, sigma)

#(d) n=4
###
xbar <- function(i)(mean(rnorm(4,mu, sigma)))
xbar10000 <- sapply(1:10000, xbar)
hist(xbar10000)
mean(xbar10000<98)
###

pnorm(98, mu, sigma/sqrt(4))


#(e)

1-pchisq((100-1)*32/sigma^2,100-1)
