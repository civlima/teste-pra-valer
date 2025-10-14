library(palmerpenguins)
library(tidyverse)
library(ggthemes)
glimpse(penguins)

ggplot(data = penguins)

# Example with points in linear model 
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color= species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass(g)",
    color = "Species", shape = "Species"
  ) +
  scale_colour_colorblind()

# Other examples
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE) #separate the lines by species

ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

# Bars are better to categorical variables
ggplot(penguins, aes(x = species)) +
  geom_bar()

# Same but based on the frequencies
ggplot(penguins, aes(x = fct_infreq(species))) +
  geom_bar()

# Histogram examples
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 200)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 20)

ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 2000)

# Density as an alternative to histograms
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density()


# Boxplot to compare numerical and categorical variables
ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()