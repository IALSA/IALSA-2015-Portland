id <- 1:3
a1 <- c("a", "aa", 'aaa')
a2 <- c("A", "AA", "AAA")
b1 <- c("b", "bb", 'bbb')
b2 <- c("B", "BB", "BBB")
ds <- as.data.frame(cbind(id, a1, a2, b1, b2))
ds

d <- tidyr::gather(ds, "letterA", "valueA", 2:3) %>%
  tidyr::gather("letterB","valueB", 2:3)

d

d$all <- paste(d$letterA, d$valueA,d$letterB, d$valueB, sep="-")
d

table(d$all)


library(dplyr)
# From http://stackoverflow.com/questions/1181060
stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)

tidyr::gather(stocks, stock, price, -time)
stocks %>% tidyr::gather(stock, price, -time)


library(stringr)

shopping_list <- c("apples x4", "bag of flour", "bag of sugar", "milk x2")
str_extract(shopping_list, "\\d")
str_extract(shopping_list, "[a-z]+")
str_extract(shopping_list, "[a-z]{1,4}")
str_extract(shopping_list, "\\b[a-z]{1,4}\\b")

# Extract all matches
str_extract_all(shopping_list, "[a-z]+")
str_extract_all(shopping_list, "\\b[a-z]+\\b")
str_extract_all(shopping_list, "\\d")

# Simplify results into character matrix
str_extract_all(shopping_list, "\\b[a-z]+\\b", simplify = TRUE)
str_extract_all(shopping_list, "\\d", simplify = TRUE)
