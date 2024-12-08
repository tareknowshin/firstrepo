
library(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>% 
  ggplot(aes(abb, rate)) +
  geom_bar(width = 0.5, stat = "identity", color = "salmon") +
  coord_flip() +
  theme_minimal()

ggsave("figs/barplot.png", bg = "white")
