
# Load library
library(randomForest)
library(caret)

# Prepare data
churn_data <- sales_data %>%
  group_by(`Customer ID`) %>%
  summarise(
    Total_Sales = sum(Sales),
    Total_Orders = n(),
    Avg_Discount = mean(Discount),
    Total_Profit = sum(Profit)
  ) %>%
  mutate(
    Churn = as.factor(
      ifelse(Total_Orders < 3, "Yes", "No")
    )
  ) %>%
  select(-`Customer ID`) %>%
  na.omit()

# Split data 70/30
set.seed(123)
train_index <- createDataPartition(
  churn_data$Churn, p = 0.7, list = FALSE
)
train_data <- churn_data[train_index, ]
test_data <- churn_data[-train_index, ]

# Build Random Forest Model
rf_model <- randomForest(
  Churn ~ .,
  data = train_data,
  ntree = 100,
  importance = TRUE
)

# View results
print(rf_model)

# Plot variable importance
varImpPlot(rf_model,
           main = "Feature Importance — Churn Prediction",
           col = "#4ECDC4")