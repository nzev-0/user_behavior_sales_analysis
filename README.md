# User Behavior & Sales Analysis

## 1. Project Overview

This project analyzes user behavior and sales data from an e-commerce platform, with a focus on understanding how user activity relates to purchasing behavior and revenue contribution.

The main objectives of this project are to:
	•	Practice a complete end-to-end data analysis workflow
	•	Apply SQL, Python (pandas), Excel, and Power BI in a single project
	•	Transform raw transactional data into structured insights suitable for business interpretation

Specifically, this project explores:
	•	User behavior patterns across different action types (view, cart, purchase)
	•	Aggregated user-level activity and purchase metrics
	•	Differences in user value across predefined user segments
	•	The relationship between user activity intensity and purchasing outcomes

This repository is designed as a learning-oriented but structured data analysis project, covering data preprocessing, aggregation, exploratory analysis, and dashboard-based visualization.

## 2. Dataset

The dataset used in this project comes from a real-world e-commerce user behavior dataset commonly used for educational and analytical purposes.

Data Description
	•	Records user actions such as product views, cart additions, and purchases
	•	Includes user identifiers, timestamps, and action types
	•	Large-scale transactional data suitable for aggregation-based analysis

Data Access

Due to GitHub file size limitations, raw data files are not included in this repository.

To reproduce the analysis:
	1.	Download the raw dataset from the original public source
	2.	Manually create a data/raw/ directory
	3.	Place the downloaded files into data/raw/

Note: The data/raw/ directory is intentionally ignored by git and will not appear after cloning this repository.

Because of the dataset’s scale, some intermediate results exceed Excel’s row limits.
As a result, Excel files in this project are based on aggregated user-level summaries rather than raw event-level data.

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
- **Database & Query**: SQL
- **Busioness Analysis**: Excel
- **Business Intelligence**: Power BI
- **Version Control**: Git & GitHub


## 5. The project follows a structured analysis pipeline:
	1.	Data acquisition and local storage
	2.	Data cleaning and preprocessing using pandas
	3.	Exploratory Data Analysis (EDA) in Jupyter notebooks
	4.	User-level behavior and sales aggregation using SQL
	5.	Export of aggregated results to CSV and Excel
	6.	Business-oriented analysis in Excel
	7.	Dashboard creation and visualization using Power BI
	8.	Summary of insights and interpretation


## 6. Excel Analysis (Business Interpretation)

Aggregated user-level results were exported to Excel for business-focused analysis.

In Excel, the following analyses were performed:
	•	User distribution across different user segments
	•	Revenue contribution by user segment
	•	Comparison of user activity and purchasing outcomes

A key observation from the Excel analysis is that:
	•	High-value users represent a smaller portion of the total user base
	•	However, they contribute a disproportionately large share of total revenue

This result reflects a typical uneven value distribution often observed in e-commerce platforms.

## 7. Power BI Dashboard

The final analysis results are presented using an interactive Power BI dashboard built on aggregated user-level data.

The dashboard includes the following visualizations:
	•	User Count by Segment: distribution of users across value segments
	•	Total Revenue by User Segment: comparison of revenue contribution
	•	User Activity vs Purchase Behavior: scatter plot showing the relationship between total user events and purchase count, colored by user segment

These visualizations help connect user activity intensity with purchasing outcomes and highlight behavioral differences across user segments.

A preview of the dashboard is shown below:The complete interactive report is available in the repository as a .pbix file.


## Notes

This project is part of an ongoing learning process.
Some analysis steps and structure may be refined or extended as skills and understanding improve.