library("tidyverse")
library("modelr")

mpg %>%
  ggplot(aes(displ, hwy)) +
  geom_point()

model <- lm(hwy ~ displ, data = mpg)

model

predict(model, mpg)

mpg %>%
  add_predictions(model) %>%
  ggplot() +
    geom_point(aes(displ, hwy)) +
    geom_point(aes(displ, pred), color = "red")
  

mpg %>%
  add_residuals(model) %>%
  ggplot(aes(displ, resid)) +
  geom_point()

