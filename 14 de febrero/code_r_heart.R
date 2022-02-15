library(tidyverse)

x <- function(t){
  16 * sin(t) ^ 3
}

y <- function(t){
  13*cos(t) - 5*cos(2*t) -2*cos(3*t) - cos(4*t)
}

tibble(t = seq(0, 2*pi, by = 0.01)) %>%
  mutate(x = x(t),
         y= y (t))%>%
  ggplot(mapping = aes(x, y)) +
  geom_polygon(fill = "#A7281E",
               color = "#A7281E",
               alpha = 0.9) +
  coord_equal()+
  theme_void()

