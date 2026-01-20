# ============================================
# Notebook 01: Data Preparation & Feature Creation
# ============================================

# Load libraries
library(tidyverse)
library(lubridate)

# Load dataset
df <- read_csv("../data/superstore.csv")

# Inspect structure
glimpse(df)

# -------------------------------------------------------------------------

# 1. Standardize column names
df <- df %>%
  rename_all(tolower) %>%
  rename_all(~str_replace_all(., " ", "_")) %>%
  rename_all(~str_replace_all(., "-", "_"))

# 2. Convert dates
df <- df %>%
  mutate(
    order_date = mdy(order_date),
    ship_date = mdy(ship_date),
    ship_days = as.numeric(ship_date - order_date)
  )

# 3. Create business metrics
df <- df %>%
  mutate(
    profit_margin = profit / sales,
    year = year(order_date),
    month = month(order_date, label = TRUE),
    order_value = sales / quantity
  )

# 4. Handle missing / infinite values
df <- df %>%
  filter(!is.na(profit_margin)) %>%
  filter(is.finite(profit_margin))

# 5. Aggregate customer-level metrics
customer_summary <- df %>%
  group_by(customer_id, customer_name, segment) %>%
  summarise(
    total_sales = sum(sales),
    total_profit = sum(profit),
    avg_margin = mean(profit_margin),
    orders = n(),
    .groups = "drop"
  )

# 6. Save cleaned dataset for Power BI
write_csv(df, "../outputs/cleaned_data.csv")
write_csv(customer_summary, "../outputs/customer_summary.csv")

cat("Cleaned datasets exported successfully.\n")