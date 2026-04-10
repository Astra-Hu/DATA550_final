table1 <- asd %>%
  count(asd_traits) %>%
  mutate(percent = round(100 * n / sum(n), 1))

table1 %>%
  kable(
    caption = "Table 1. Prevalence of ASD traits in the sample.",
    col.names = c("ASD trait status", "Count (n)", "Percent (%)")
  ) %>%
  kable_styling(full_width = FALSE)