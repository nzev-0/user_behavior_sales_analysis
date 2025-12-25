# User Behavior & Sales Analysis

## 1. Project Overview

This project focuses on analyzing user behavior and sales data to explore purchasing patterns, user activity trends, and their relationships with business performance metrics.

The goal of this project is to:
- Practice a complete data analysis workflow
- Transform raw transactional data into meaningful insights
- Build a portfolio-ready data analysis project using real-world data

Specifically, this project aims to analyze:
- User conversion behavior across different actions (view → cart → purchase)
- Time-based sales trends and seasonality patterns
- Basic business metrics such as conversion rate and average order value

This repository is designed as a **learning-oriented yet production-style** data analysis project, covering data preprocessing, exploratory data analysis (EDA), SQL analysis, and business intelligence visualization.

## 2. Dataset

The dataset used in this project comes from a real-world e-commerce user behavior dataset.

Due to GitHub file size limitations, the **raw data files are not included** in this repository.

### Data Source
- Public e-commerce user behavior dataset,the dataset is commonly used for user behavior analysis and educational purposes.
- Contains user actions such as views, cart additions, and purchases
- Time-based transactional records

### Data Access

Due to GitHub file size limitations, raw data files are excluded from version control.

To reproduce this project:
1. Download the raw dataset from the original source
2. Manually create a `data/raw/` directory
3. Place the downloaded files into `data/raw/`

Due to the large scale of the dataset, some intermediate results exceed Excel’s row limitations.
Therefore, Excel outputs in this project are based on aggregated or sampled data rather than the full dataset.

> Note: The `data/raw/` directory is intentionally ignored by git and will not appear after cloning this repository.

## 3. Project Structure

user_behavior_sales_analysis/
├── data/
│   ├── raw/               # Raw data (ignored by git)
│   └── processed/         # Processed datasets (CSV outputs)
├── notebooks/             # Jupyter notebooks (step-by-step learning and EDA)
├── sql/                   # SQL scripts for data aggregation
├── excel/                 # Excel summary outputs (business-ready tables)
├── power_bi/              # Power BI dashboards and reports
├── requirements.txt       # Python dependencies
└── README.md

## 4. Tech Stack

- **Programming Language**: Python
- **Data Analysis**: pandas, numpy
- **Visualization**: matplotlib, seaborn
- **Database & Query**: SQL
- **Business Intelligence**: Power BI
- **Version Control**: Git & GitHub

## 5. Excel Analysis (Business Interpretation)

The aggregated user segment results were exported to Excel for
business-oriented analysis and interpretation.

In Excel, the following analyses were performed:
- Comparison of user distribution across segments
- Revenue contribution analysis by user segment
- Identification of high-value user impact

Key insight:
High-value users represent a relatively small proportion of total users
but contribute a disproportionately large share of total revenue,
indicating a typical Pareto-like distribution.


## 6. Analysis Pipeline

1. Data acquisition and storage
2. Data cleaning and preprocessing
3. Exploratory Data Analysis (EDA)
4. User behavior analysis using SQL
5. Sales metrics analysis
6. Excel-based business interpretation
7. Visualization and dashboard creation (Power BI)
8. Insight summary and business interpretation


## Notes

This project is continuously updated as part of an ongoing learning process.
Some analysis steps and structures may be refined over time.