#Data visualization

library(tidyverse)
library(dslabs)
data(gapminder)
gapminder %>% as_tibble()

#---------------------------------------------------------------
filter(gapminder, year == 1962) %>%
  ggplot(aes(fertility, life_expectancy)) +
  geom_point()
 
#-------------------------------------------------------------------------------
filter(gapminder, year == 1962) %>%
  ggplot( aes(fertility, life_expectancy, color = continent)) +
  geom_point() 
