library("tidyverse")
library("modelr")

mpg %>%
  ggplot(aes(displ, hwy)) +
  geom_point()

model <- lm(hwy ~ displ, data = mpg)

model

model <- lm (
  hwy ~ I(displ ^ 2),
  data = mpg
)

model

model <- lm (
  hwy ~ poly(displ, 3),
  data = mpg
)


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

