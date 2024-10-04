# Bike-Share

# Objective

The objective of this project is to analyze and create a dashboard for Toman Bike Share that highlights key performance metrics to support informed decision-making on a potential 25% increase in bike shares for 2023.

## User story

We can recall that our bike-share company increased the price of our rental bikes by 25% in 2022, and is considering another 25% increase for 2023. We need your expertise to analyze and create a dashboard for Toman Bike Share that highlights key performance metrics, helping us make an informed decision on moving forward.

Insights and recommendations should be provided on the following key areas: 
- Daily Revenue Analysis
- Yearly and monthly Profit and Revenue Trends for 2021 and 2022
- Quarterly Revenue
- Rider Demographics

This will help the company make informed decisions on whether to proceed with a 25% price increase.

# Data source 

- What data is needed to achieve our objective?

We need data on Toman Bike Share for 2021 and 2022 that includes their 
- Number of Riders
- Rider type
- Date
- Price
- Cost of goods
- Revenue
- Profit


Where is the data coming from? 

The data is sourced from Kaggle (contains 3 CSV files), [see here to find it.](https://www.kaggle.com/datasets/walmalki/toman-bike-share-dataset)

## Tools 



| Tool | Purpose |
| --- | --- |
| Excel | Exploring the data and cleaning |
| SQL Server | Cleaning, Testing, and Analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |

# Data Cleaning, Structure & Testing
The companies main database structure consists of 3 tables: Bike Share 2021 table, Bike Share 2022 table, and Cost table, with combined total of 33 columns and row count of 34,761 records.

The data met the following criteria and constraints after cleaning:

- Only relevant columns were retained.
- All data types were appropriate for the contents of each column.
- No column contained null values, indicating complete data for all records.

Below is a table outlining the constraints on our cleaned dataset:

| Property | Description |
| --- | --- |
| Number of Rows | 34,758 |
| Number of Columns | 7 |

And here is a tabular representation of schema for our cleaned dataset:

| Column Name | Data Type | Nullable |
| --- | --- | --- |
| Date | date | NO |
| Rider_Type | varchar | NO |
| Riders | int | NO |
| Price | float | NO |
| Cost_of_Goods | Float | NO |
| Revenue | float | NO |
| Profit | float | NO |
