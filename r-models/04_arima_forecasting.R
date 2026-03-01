# Load library
library(forecast)

# Prepare monthly sales data
sales_monthly <- sales_data %>%
  mutate(Month = format(as.Date(`Order Date`), "%Y-%m")) %>%
  group_by(Month) %>%
  summarise(Total_Sales = sum(Sales)) %>%
  arrange(Month)

# Create time series object
sales_ts <- ts(sales_monthly$Total_Sales, 
               start = c(2014, 1), 
               frequency = 12)

# Build ARIMA model
arima_model <- auto.arima(sales_ts)

# View model summary
summary(arima_model)

# Forecast next 6 months
forecast_result <- forecast(arima_model, h = 6)

# Plot forecast
plot(forecast_result,
     main = "Sales Forecast — Next 6 Months",
     xlab = "Time",
     ylab = "Total Sales",
     col = "#4ECDC4")