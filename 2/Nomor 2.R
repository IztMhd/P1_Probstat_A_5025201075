n <- 20
p <- .2
x <- 4

#nomor 2a
dbinom(x, n, p)

#nomor 2b
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dbinom(0:10, 20, 0.2)) %>%
  mutate(pers = ifelse(x == n, n, "other")) %>%
  ggplot(aes(x = factor(x), y = prob, fill = pers)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Probability of X = 4 recover",
       x = "success (x)",
       y = "Probability") 

#nomor 2c
rataan <- n * p
varians <- n * p * (1-p)
rataan
varians