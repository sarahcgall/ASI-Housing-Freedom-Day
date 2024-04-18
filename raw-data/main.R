library(tidyverse)

df <- read.csv("raw-data/Regional Data - Sheet3.csv")

ggplot(df, aes(x = Year, y = Days, group = Region, colour = Region)) +
  # geom_vline(xintercept = 2019) +
  # geom_vline(xintercept = 2023) +
  geom_line() +
  geom_point() +
  gghighlight::gghighlight(use_direct_label = FALSE) +
  scale_y_continuous() +
  scale_x_continuous(breaks = c(2019, 2023)) +
  labs(title = "In England, the Freedom Day has not improved since 2023",
       subtitle = "",
       x = "",
  caption = "Data Source: ONS") +
  facet_wrap(.~reorder(Region, -Days)) +
  scgUtils::theme_scg() +
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        legend.position = "none",
        axis.line = element_blank(),
        axis.ticks = element_blank()
        )