# Problem 1.a

X <- 20:70
pmf_X <- dbinom(X, 100, 0.5)

plot(X, pmf_X, 
     main = "PMF of X ~ Binomial(100, 0.5) for x in [20, 70]",
     xlab = "Number of Heads (X)",
     ylab = "Probability P(X = x)")

# Problem 1.b
size_E1 <- 40; size_E2 <- 69; tosses <- 100; pfair = 1/2; pbiased = 2/3
prob_E1_fair <- pbinom(size_E1, tosses, pfair)
prob_E2_fair <- 1 - pbinom(size_E2, tosses, pfair)
prob_E1_biased <- pbinom(size_E1, tosses, pbiased)
prob_E2_biased <- 1 - pbinom(size_E2, tosses, pbiased)

prob_E1_fair
prob_E2_fair
prob_E1_biased
prob_E2_biased

# Problem 1.c

# If Coin 1 resulted in 40 heads and were biased P(X=40) < P(X<40) = 4.324019e-08.
# Whereas, if it were fair P(X=40) < P(X<40) = 0.02844397 which is much more likely.
# If Coin 2 resulted in 70 heads and were biased P(X=70) < P(X<70) = 3.92507e-05.
# Whereas, if it were fair P(X=70) < P(X<70) = 0.2765539 which is much more likely.

# Problem 1.d

X = 0:10
even_indices <- seq(from = 1, to = 11, by = 2)

prob_fair_10 <- dbinom(X, 10, pfair)
prob_E3_fair <- sum(prob_fair_10[even_indices])

prob_biased_10 <- dbinom(X, 10, pbiased)
prob_E3_biased <- sum(prob_biased_10[even_indices])

prob_E3_fair
prob_E3_biased




