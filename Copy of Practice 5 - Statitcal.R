# Descrete Normalization (Bionomial Distribution & Poission Distribution)


# Probability of exactly 2 successes in 5 trials with success probability 0.5
dbinom(2, size = 5, prob = 0.5)
# Generate 10 random values from a binomial distribution (5 trials, p = 0.5)
rbinom(10, 5, 0.5)


# Probability of observing exactly 3 events when the average rate (lambda) is 2
dpois(3, lambda = 2)
# Generate 5 random values from a Poisson distribution with lambda = 2
rpois(5, lambda = 2)


# Barplot of frequencies from 1000 Poisson samples with lambda = 2
barplot(table(rpois(1000, lambda = 2)), col = 'skyblue', main = "Poission Distribution (lambda = 2)")
# Barplot of frequencies from 1000 binomial samples (5 trials, p = 0.5)
barplot(table(rbinom(1000, 5, 0.5)), col = 'Red', main = "Bionomial Distribution")



# Continous Normalization (Normal Distribution, Uniform Distribution & Exponential Distribution)


# Density of standard normal distribution at 0 (mean = 0, sd = 1)
dnorm(0, mean = 0, sd = 1)
# Cumulative probability up to 1.96 for standard normal distribution
pnorm(1.96, mean = 0, sd = 1)
# Generate 100 random values from normal distribution with mean 10 and sd 2
rnorm(100, mean = 10, sd = 2)


# Generate 100 random normal values with mean 10 and sd 2, summarize their statistics, and plot their distribution as a histogram
x <- rnorm(100, mean = 10, sd = 2)
summary(x)
hist(x, col = 'Black', main = 'Geeral Normal Dist')



values <- runif(1000, min = 0, max = 1)
hist(values, col = "Lightgreen", main = "Uniform Distibution", breaks = 20)

values <- rnorm(1000, mean =1, sd =0.2)
hist(values, col = "Lightgreen", main = "Normal Distibution", breaks = 20)

values <- rexp(1000, rate = 1)
hist(values, col = "Lightgreen", main = "Normal Distibution", breaks = 20)


x <- seq(-4,4,0.1)
plot(x, dnorm(x), type ="1", col ="blue", main= "Normal Distibution")


x <- seq(-4,4,0.1)
plot(x, dnorm(x), type ="p", col ="blue", main= "Normal Distibution")




# Set up plotting area: 1 row, 2 columns
par(mfrow = c(1, 2))

# 1. Discrete Probability Distribution (Binomial)
x_D <- 0:5  # Possible number of successes (0 to 5)
prob_D <- dbinom(x_D, size = 5, prob = 0.5)  # Binomial probabilities

barplot(prob_D, names.arg = x_D,
        col = "black", ylim = c(0, 0.4),
        main = "Discrete Distribution",
        xlab = "Number of Successes",
        ylab = "Probability")

# 2. Continuous Probability Distribution (Normal)
x_c <- seq(-4, 4, by = 0.1)
y_c <- dnorm(x_c, mean = 0, sd = 1)

plot(x_c, y_c, type = "1", lwd = 2,
     col = 'blue', main = "Continuous Distribution",
     xlab = "Value", ylab = "Density")

polygon(x_c, y_c, col = rgb(1,1, 0.1))

