#penguin plot
library(tidyverse)
library(palmerpenguins)
library(ggplot2)

View(penguins)

penguins |> 
  filter(species == "Gentoo") |> 
  ggplot(aes(x = body_mass_g, y = bill_length_mm)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "Body mass g", y = "Bill length mm", title = "Adelie")
