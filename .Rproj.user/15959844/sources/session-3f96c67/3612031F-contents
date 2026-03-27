suppressPackageStartupMessages({
  library(tidyverse)
  library(janitor)
  library(knitr)
  library(kableExtra)
  library(broom)
})

# Load data
asd <- read_csv("data/Adult_ASD.csv", show_col_types = FALSE) %>%
  clean_names()

# Remove index column if present
if ("x1" %in% names(asd)) {
  asd <- asd %>% select(-x1)
}

# Check required columns
if (!"asd_traits" %in% names(asd)) {
  stop("Column 'asd_traits' not found")
}

if (!"age_years" %in% names(asd)) {
  stop("Column 'age_years' not found")
}

if (!"sex" %in% names(asd)) {
  stop("Column 'sex' not found")
}

if (!"a10_autism_spectrum_quotient" %in% names(asd)) {
  stop("Column 'a10_autism_spectrum_quotient' not found")
}

# Standardize variable names
asd <- asd %>%
  rename(
    score = a10_autism_spectrum_quotient
  )

# Convert types
asd <- asd %>%
  mutate(
    asd_traits = factor(asd_traits, levels = c("No", "Yes")),
    sex = factor(sex)
  )