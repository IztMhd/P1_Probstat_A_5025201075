x <- 3
p <- .2
n <- 10000

#nomor 1a
dgeom(x, p)

#nomor 1b  ?
set.seed(10)
mean(rgeom(n, p) == 3)

#nomor 1d   ?
hist(rgeom(n, p), breaks = 20)

#nomor 1e
rataan <- 1/p
varians <- (1-p)/p^2
rataan
varians
###OR###
set.seed(10)
rerata <- mean(rgeom(n, p)+1)
rerata
varian <- var(rgeom(n, p))
varian