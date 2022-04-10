lamd <- 4.5
x <- 6
days <- 365

#nomor 3a
dpois(x, lamd)

#nomor 3b
baby <- data.frame("data" = rpois(365, 4.5))
baby %>% ggplot() +
  geom_histogram(aes(x = data, y = stat(count / sum(count)), fill = data == 6), binwidth = 1, color = 'black',) +
  scale_x_continuous(breaks = 0:10) +
  labs(title = 'Birth of a baby for a year', 
       x = 'Born baby', 
       y = 'Probability')

#nomor 3d
rataan <- lamd
varians <- lamd
rataan
varians
