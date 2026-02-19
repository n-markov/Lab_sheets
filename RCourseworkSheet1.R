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

# Problem 2.a

nums <- 1:6
pow_of_10 <- 10^nums
results <- (1-1/pow_of_10)^pow_of_10

nums
pow_of_10
results

# Problem 2.b

# Observing reciprocal_results we notice that as n -> inf, reciprocal_results -> e.
# Hence, (1-1/n)^n -> e^-1. 

reciprocal_results <- 1/results
reciprocal_results

# Problem 2.c
num_students = 312
# Let X_i represent the ith student. P(Nobody wins a chocolate egg)
# = P(X_1 doesn't win and X_2 doesn't win and ... and X_312 doesn't win)
# = P(X_1 doesn't win) * P(X_2 doesn't win) * ... * P(X_312 doesn't win), by independence
# = P(X_1 doesn't win) ^ 312, by identical distribution
# = (1 - P(X_1 does win)) ^ 312

# Observe that, P(X_1 does win) = P(Rolling a 6 on a fair die) * P(Choosing the Ace of Spades) = 1/6 * 1/52 = 1/312
prob_win <- 1/312
# Hence, P(Nobody wins a chocolate egg) = (1 - 1/312) ^ 312 approx 1/e, as seen previously for large n.
prob_no_one_wins <- (1 - prob_win) ^ num_students
prob_no_one_wins

# Problem 2.d.i
years = 5
# P(No winners over 5 years) = ((1 - 1/312) ^ 312) ^ 5 approx (e^-1)^5 = e^-5
prob_no_one_wins_5years <- prob_no_one_wins ^ years
prob_no_one_wins_5years

# Problem 2.d.ii
# Let T represent the total number of chocolates awarded over 5 years with total number of students = 312*5 = 1560
# Hence, T ~ Binom(1560, 1/312)

samples <- rbinom(20, 1560, 1/312)

barplot(table(samples),
     main = "# Chocolate Eggs won over a 5-Year Period across 20 Samples",
     xlab = "Number of Eggs", ylab = "Frequency")







