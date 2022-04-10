n <- 100
mean <- 50
sd <- 8

#nomor 6a
set.seed(10)
random <- rnorm(n, mean, sd)
rataan <- mean(random)
rataan
x1 <- floor(rataan)
x1
x2 <- round(rataan)
x2

funprob <- pnorm(x2, mean, sd) - pnorm(x1, mean, sd)
funprob

z1 <- (x1-mean)/sd
z1
z2 <- (x2-mean)/sd
z2

#nomor 6b  ?
hist(?, breaks = 50, main = "5025201075_Izzati Mukhammad_Probstat_A_DNhistogram")

#nomor 6c  ?
var(rnorm(n, mean, sd))