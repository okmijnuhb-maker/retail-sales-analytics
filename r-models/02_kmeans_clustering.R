# Load libraries
library(cluster)
library(factoextra)

# Prepare data for clustering
cluster_data <- shopping_data %>%
  select(Age, `Purchase Amount (USD)`, 
         `Review Rating`) %>%
  na.omit() %>%
  scale()

# Find optimal number of clusters
fviz_nbclust(cluster_data, kmeans, method = "wss")




# Set seed for reproducibility
set.seed(123)

# Build K-Means model with 3 clusters
kmeans_model <- kmeans(cluster_data, 
                       centers = 3, 
                       nstart = 25)

# Visualize clusters
fviz_cluster(kmeans_model, 
             data = cluster_data,
             ellipse.type = "convex",
             palette = c("#FF6B6B", "#4ECDC4", "#45B7D1"),
             ggtheme = theme_dark(),
             main = "Customer Segments — K-Means Clustering")


# Add cluster labels to shopping data
shopping_data$Cluster <- as.factor(kmeans_model$cluster)

# View cluster summary
shopping_data %>%
  group_by(Cluster) %>%
  summarise(
    Avg_Age = mean(Age),
    Avg_Purchase = mean(`Purchase Amount (USD)`),
    Avg_Rating = mean(`Review Rating`),
    Count = n()
  )