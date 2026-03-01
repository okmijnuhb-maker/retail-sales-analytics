# Load library
library(corrplot)

# Select numeric columns from sales data
sales_numeric <- sales_data %>%
  select(Sales, Profit, Discount, Quantity) %>%
  na.omit()

# Calculate correlation matrix
cor_matrix <- cor(sales_numeric)

# Visualize correlation
corrplot(cor_matrix,
         method = "color",
         type = "upper",
         addCoef.col = "white",
         tl.col = "white",
         tl.srt = 45,
         col = colorRampPalette(c("#FF6B6B","white","#4ECDC4"))(200),
         title = "Correlation Analysis — Sales Factors",
         mar = c(0,0,1,0))