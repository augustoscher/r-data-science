library("tidyverse")

mpg %>%
  select(manufacturer, model) %>%
  filter(model == "a4")

# and
mpg %>%
  filter(model == "a4", displ > 2)

# or
mpg %>%
  filter(model == "a4" | displ > 2)

# Exibe planilha
mpg %>%
  View()

# Exibe planilha com filtro
mpg %>%
  filter(year == 1999) %>%
  select(manufacturer, displ) %>%
  View()

mpg %>%
  filter(year == 1999) %>%
  ggplot(aes(displ, hwy)) +
  geom_point()

# ordenação de colunas
mpg %>%
  arrange(model, manufacturer)

mpg %>%
  filter(drv %in% c("f", "r"))

#mod
5 %/% 2

