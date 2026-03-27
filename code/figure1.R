p <- ggplot(asd, aes(x = asd_traits, y = score, fill = asd_traits)) +
  geom_boxplot(alpha = 0.75) +
  labs(
    title = "Screening score distribution by ASD trait status",
    x = "ASD trait status",
    y = "Total screening score"
  ) +
  theme_minimal() +
  theme(legend.position = "none")

print(p)