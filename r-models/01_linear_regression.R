# Load required libraries
library(ggplot2)
library(dplyr)
library(caret)

# Prepare Sales Data for Regression
sales_clean <- sales_data %>%
  select(Sales, Profit, Discount, Quantity) %>%
  na.omit()

# Build Regression Model
# Predicting Sales based on Profit, Discount and Quantity
regression_model <- lm(Sales ~ Profit + Discount + Quantity, 
                       data = sales_clean)

# View Model Summary
summary(regression_model)

# Visualize Regression Results
par(mfrow = c(2,2))
plot(regression_model)