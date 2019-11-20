library("tidyverse")


#mpg é o dataset
mpg

#Acessa a coluna do dataset
mpg$drv

#Gerando gráficos
ggplot(mpg, aes(x = cyl, y = hwy)) +
  geom_point()
  
ggplot(mpg, aes(x = manufacturer)) +
  geom_bar()

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = drv))

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = drv)) +
  geom_smooth(se = FALSE) +
  labs(
    title = "Gráfico"
  )

ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~drv)

ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = manufacturer)) +
  facet_grid(drv ~ year)

mpg %>%
  ggplot(aes(displ, hwy)) +
  geom_point()


mean(mpg$hwy)

sd(mpg$hwy)

