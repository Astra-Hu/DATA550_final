male_indicator <- asd$sex %in% c("M", "Male", "male", "1")

tab2 <- asd %>%
  group_by(asd_traits) %>%
  summarise(
    n = n(),
    age_mean = mean(age_years, na.rm = TRUE),
    age_sd = sd(age_years, na.rm = TRUE),
    score_mean = mean(score, na.rm = TRUE),
    score_sd = sd(score, na.rm = TRUE),
    male_pct = mean(male_indicator, na.rm = TRUE) * 100,
    .groups = "drop"
  ) %>%
  mutate(across(c(age_mean, age_sd, score_mean, score_sd, male_pct), ~ round(.x, 1))) %>%
  kable(
    caption = "Table 2. Summary statistics by ASD trait status.",
    col.names = c("ASD trait status", "n", "Age mean", "Age SD", "Score mean", "Score SD", "% Male")
  ) %>%
  kable_styling(full_width = FALSE)

print(tab2)