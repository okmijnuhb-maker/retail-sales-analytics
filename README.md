# 🛒 Retail Sales Analytics Project
### Power BI Dashboard + R Statistical Modelling
**Prepared by: J. Charan Reddy | February 2026**  
**Tools: Power BI Desktop | R 4.5.2 | RStudio**

---

## 📌 Project Overview

An end-to-end data analytics portfolio project demonstrating proficiency across the full analytics pipeline — from raw data ingestion and transformation to advanced statistical modelling and interactive dashboard creation.

The project combines **3 real-world Kaggle datasets** integrated through a **Star Schema data model** in Power BI. A **5-page interactive dashboard** was built, complemented by **5 R statistical models** for deeper analytical insights.

---

## 🔑 Key Results

| Metric | Value |
|--------|-------|
| 💰 Total Revenue | $2.30M |
| 📈 Total Profit | $286.40K |
| 🎯 Profit Margin | 12.47% |
| 🚀 YoY Sales Growth | 20.36% |
| 👥 Customer Retention | 99.4% (788/793) |
| 🤖 Churn Model Accuracy | 100% |
| 📊 ARIMA Forecast Accuracy | 86.13% |
| 🔵 Customer Segments | 3 Identified |

---

## 🗂️ Repository Structure

```
retail-sales-analytics/
│
├── 📁 Outputs/                        # Charts and visualisation exports
│   ├── Correlation&Arima.png
│   ├── KMeans_plot.png
│   ├── Regression_plot.png
│   └── feature_importance.png
│
├── 📁 data/                           # Raw datasets
│   ├── Customer Personality.xlsx      # 2,240 rows
│   ├── Sales Data.xlsx                # 9,994 rows
│   └── Shopping Trends.xlsx          # 3,900 rows
│
├── 📁 power BI/                       # Power BI dashboard
│   └── Retail_Dashboard.pbix
│
├── 📁 r-models/                       # R statistical model scripts
│   ├── 01_linear_regression.R
│   ├── 02_kmeans_clustering.R
│   ├── 03_correlation_analysis.R
│   ├── 04_arima_forecasting.R
│   └── 05_random_forest_churn.R
│
├── 📁 report/                         # Full project report
│   └── Project_Report.pdf
│
└── README.md
```

---

## 📦 Datasets Used

| Dataset | Rows | Source |
|---------|------|--------|
| Sales Data.xlsx | 9,994 | Kaggle |
| Customer Personality.xlsx | 2,240 | Kaggle |
| Shopping Trends.xlsx | 3,900 | Kaggle |

**Architecture:** Star Schema — Shopping Trends (Fact Table) connected to Sales Data and Customer Personality via shared keys.

---

## 📊 Power BI Dashboard — 5 Pages

### Page 1 — Sales Overview
- Total Sales: **$2.30M** | Total Profit: **$286.40K** | Orders: **10,000** | Margin: **12.47%**
- Phones and Chairs lead sub-category sales
- Technology dominates revenue contribution
- Q4 shows strongest seasonal demand across all categories

### Page 2 — Customer Behaviour Analysis
- Total Shoppers: **3,900** | Avg Age: **44.07 years** | Satisfaction: **3.75/5.00**
- Male customers drive 67.74% of total purchase volume
- Female customers have higher average spend per transaction ($60.2 vs $59.5)
- Fall is the peak shopping season | Clothing dominates year-round

### Page 3 — Discount & Profitability Analysis
- Total Discount: **$156.11K** | Discount Impact: **-$34.59K (Loss)**
- Binders receive highest discounts but return lowest profit
- Furniture shows chronic negative profit months despite heavy discounting
- Technology shows highest discount-to-profit efficiency

### Page 4 — Executive Summary
- Sales Growth: **20.36% YoY** | Repeat Customers: **788/793 (99.4%)**
- West region leads sales at $725.46K | South region underperforms significantly
- Clear Q4 seasonal peaks visible across all years (2014–2017)

### Page 5 — AI Powered Customer Insights
- Product **Category** is the strongest purchase driver (overrides geography and season)
- Nevada customers are **3.30x** more likely to buy Backpacks
- Nebraska customers show **2.60x** higher Backpack purchase likelihood
- Summer increases Backpack purchase probability by **1.42x**

---

## 🤖 R Statistical Models

### Model 1 — Linear Regression (`01_linear_regression.R`)
| Metric | Value |
|--------|-------|
| R-Squared | 0.2638 (26.38% variance explained) |
| F-Statistic | 1193 (p < 2.2e-16) |
| Strongest Predictor | Discount (coefficient: 231.74) |

> **Key Finding:** Discount is the strongest sales driver — but directly contradicts profitability data showing -$34.59K net loss from discounting.

---

### Model 2 — K-Means Customer Segmentation (`02_kmeans_clustering.R`)
| Segment | Avg Age | Avg Purchase | Avg Rating | Count |
|---------|---------|-------------|------------|-------|
| 🟥 Cluster 1 — Premium Seniors | 54.2 yrs | $81.40 | 3.87 | 1,192 |
| 🟦 Cluster 2 — Middle Budget | 53.5 yrs | $38.00 | 3.56 | 1,223 |
| 🟩 Cluster 3 — Young Mid-Spenders | 28.2 yrs | $60.40 | 3.80 | 1,485 |

> **Optimal Clusters:** 3 (Elbow Method) | **Total Variance Explained:** 67.8%

---

### Model 3 — Correlation Analysis (`03_correlation_analysis.R`)
| Variable Pair | Correlation | Interpretation |
|--------------|-------------|----------------|
| Sales vs Profit | +0.48 | Moderate positive |
| Sales vs Discount | +0.20 | Weak positive |
| Profit vs Discount | -0.22 | Negative — discounts reduce profit |

---

### Model 4 — ARIMA Time Series Forecasting (`04_arima_forecasting.R`)
| Metric | Value |
|--------|-------|
| Model Type | ARIMA(0,1,1)(0,1,1)[12] |
| MAPE (Forecast Error) | 13.87% |
| AIC Score | 766.74 |
| Forecast Horizon | 6 months ahead |

> **Key Finding:** Strong 12-month seasonality detected — aligns perfectly with Q4 peaks observed in Power BI dashboard.

---

### Model 5 — Random Forest Churn Prediction (`05_random_forest_churn.R`)
| Metric | Value |
|--------|-------|
| Algorithm | Random Forest (100 Trees) |
| OOB Error Rate | 0% — Perfect accuracy |
| Correct Predictions | 556/556 (100%) |
| Top Churn Predictor | Total Orders (MeanDecreaseAccuracy: 16+) |

> **Key Finding:** Total Orders is the single most powerful churn predictor — customers with fewer than 3 orders are definitively at risk.

---

## 📉 Output Visualisations

| File | Description |
|------|-------------|
| `Correlation&Arima.png` | Correlation matrix + ARIMA 6-month sales forecast |
| `KMeans_plot.png` | K-Means 3-cluster customer segmentation plot |
| `Regression_plot.png` | Regression diagnostic plots (Residuals, Q-Q, Leverage) |
| `feature_importance.png` | Random Forest feature importance chart |

---

## 💡 Key Business Recommendations

**Immediate (0–3 Months)**
- Reduce Binders discount spend — accounts for majority of -$34.59K loss
- Implement 20% discount ceiling for Furniture category
- Launch churn re-engagement campaign after customers' 2nd purchase
- Increase Technology stock before Q4 season

**Medium Term (3–12 Months)**
- Develop South region market penetration plan
- Design segment-specific campaigns based on 3 K-Means clusters
- Replace blanket discounts with value-added promotions (bundling, free shipping)

**Long Term**
- Leverage 99.4% retention rate as a brand differentiator
- Build rolling 12-month ARIMA forecast for inventory planning
- Target Nevada and Nebraska markets for Accessories (3.30x and 2.60x purchase probability)

---

## 🛠️ Technical Skills Demonstrated

`Power BI` `DAX Measures` `Star Schema` `Power Query` `R` `ggplot2` `Linear Regression` `K-Means Clustering` `ARIMA` `Random Forest` `Data Cleaning` `Time Series` `Machine Learning` `Statistical Modelling`

---

## 📊 Project Summary Statistics

| Stat | Value |
|------|-------|
| Dashboard Pages | 5 |
| DAX Measures | 14 |
| R Statistical Models | 5 |
| Total Dataset Rows | 16,134 |
| Datasets Used | 3 |
| Visualisation Types | 6 |

---

## 👤 Author

**J. Charan Reddy**  
📅 February 2026  
🔧 Tools: Power BI Desktop | R 4.5.2 | RStudio
