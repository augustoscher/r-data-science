library("tidyverse")

tabela <- tribble(
  ~nome, ~idade, ~sobrenome,
  "Augusto", as.integer(28), "Scher",
  "Dani", as.integer(27), "Rauber"
)

meu.nome <- "Augusto Scher"
runif(0, 5)
read.csv("git/rep/r-data-science/household_power_consumption.csv")

idades <- c(27, 28, 29, 39, NA)
mean(idades, na.rm = TRUE)
sd(idades, na.rm = TRUE)

# definição de function
media <- function(arr) {
  c <- 0
  s <- 0
  for (v in arr) {
    if (!is.na(v)) {
      s <- s + v
      c <- c + 1
    }
  }
  s / c
}

media(idades)

i <- 0
while (i < 10) {
  i <- i + 1
  print(i)
}

a <- list("a", 1, 3)
a[[2]]


pessoa <- list(
  nome = c("Augusto", "Dani"),
  idades = c(28, 27)
)

pessoa$nome
pessoa$nome[1]



