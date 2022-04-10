x <- 3
p <- .2
n <- 10000

#nomor 1a
dgeom(x, p)

#nomor 1b
mean(rgeom(n, p) == 3)

#nomor 1d 
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dgeom(0:10, p)) %>%
  mutate(Failures = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = Failures)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 3 Failures Prior to First Success",
       subtitle = "Geometric(.2)",
       x = "Failures prior to first success (x)",
       y = "Probability") 

#nomor 1e
rataan <- 1/p
varians <- (1-p)/p^2
rataan
varians