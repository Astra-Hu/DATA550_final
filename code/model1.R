tab3 <- glm(
  asd_traits ~ score + age_years + sex,
  data = asd,
  family = binomial()
) %>%
  broom::tidy(conf.int = TRUE, exponentiate = TRUE) %>%
  select(term, estimate, conf.low, conf.high, p.value) %>%
  mutate(
    across(c(estimate, conf.low, conf.high), ~ round(.x, 2)),
    p.value = signif(p.value, 3)
  ) %>%
  kable(
    caption = "Table 3. Logistic regression results (Odds Ratios).",
    col.names = c("Predictor", "OR", "CI Low", "CI High", "p-value")
  ) %>%
  kable_styling(full_width = FALSE)

print(tab3)