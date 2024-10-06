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

Data Cleaning Steps:

1. Changed the data type of "riders" column from text to whole number.
2. Changed data type of "date" column from text to date, but it returned over 1,000 rows of errors. I fixed it by setting the date column format as "mm-dd-yyyy".
3. Checked for duplicate records. The duplicates in columns like "date", "rider_type" were excepted were perfectly fine for the analysis.
4. Checked for null values.
5. Created a Revenue column by calculating "riders * price".
6. Created a "Profit" column by calculating  "revenue - (Cost_of_goods * riders)".
7. Removed unnecessary columns by only selecting the ones I need and renamed columns using aliases.


# Executive Summary

### Overview of Findings

Toman Bike Share had a fantastic 2022, and numbers show that another price increase could work if we keep delivering good value to our riders. Instead of a 25% price increase for 2023, I suggest a 10% increase first to see how customers respond, and adjust if needed.

# Analysis 

## Findings

- What did we find?

For this analysis, we're going to focus on the key performance metrics below to get the information we need for our company -

Here are the key performance metrics:

1. Year-over-Year Growth (2021 vs. 2022).
2. Monthly Trends (2021 vs. 2022).
3. Quarterly Revenue Comparison.
4. Revenue by Rider Type.
5. Revenue by Day.


### 1. Year-over-Year Growth (2021 vs. 2022)

Total Riders increased from 1,243,103 in 2021 to 2,049,576 in 2022, indicating a significant rise of approximately 65%.
Total Revenue grew from $4,959,981 to $10,227,384, a 106% increase, suggesting strong financial performance.
Total Profit increased from $3,418,533 to $7,030,046, showing an approximate 106% growth in profit.

| Year | Riders          | Revenue         |   Profit  |
|------|-----------------|-----------------|-----------|
| 2021 | 1,243,103       | $4,959,981      | 3,418,533 |
| 2022 | 2,049,576       | $10,227,384     | 7,030,046 |



### 2. Monthly Trends (2021 vs. 2022)

In 2022, riders and revenue saw consistent increases compared to 2021. Monthly revenue in 2022 was, on average, nearly double that of 2021.
Notably, July-September 2022 showed peak performance, with each month generating more than $900,000 in revenue.

**2021**

| Month      | Riders    | Revenue          | Profit         |
|------------|-----------|------------------|----------------|
| January    | 61,964    | $247,236.36      | $170,401       |
| Febuary    | 71,657    | $285,911.43      | $197,056.75    | 
| March      | 84,582    | $337,482.18      | $232,600.5     |
| April      | 107,930   | $430,640.7       | $296,807.5     |
| May        | 125,947   | $502,528.53      | $346,354.25    |
| June       | 125,740   | $501,702.6       | $345,785       |
| July       | 121,561   | $485,028.39      | $334,292.75    |
| August     | 121,051   | $482,993.49      | $332,890.25    |
| September  | 121,377   | $484,294.23      | $333,786.75    | 
| October    | 114,558   | $457,086.42      | $315,034.5     |  
| November   | 97,681    | $389,747.19      | $268,622.75    |
| December   | 89,055    | $355,329.45      | $244,901.25    |

**2022**

| Month      | Riders     | Revenue         | Profit       |
|------------|------------|-----------------|--------------|
| January    | 125,308    | $625,286.92     | $429,806.44  |
| Febuary    | 126,111    | $629,293.89     | $432,560.73  | 
| March      | 182,819    | $912,266.81     | $627,069.17  |
| April      | 170,807    | $852,326.93     | $585,868.01  |
| May        | 188,102    | $938,628.98     | $645,189.86  |
| June       | 191,087    | $953,524.13     | $655,428.41  |
| July       | 195,863    | $977,356.37     | $671,810.09  |
| August     | 197,263    | $984,342.37     | $676,612.09  |
| September  | 201,810    | $1,007,031.9    | $692,208.3   | 
| October    | 188,113    | $938,683.87     | $645,227.59  |  
| November   | 152,708    | $762,012.92     | $523,788.44  |
| December   | 129,585    | $646,629.15     | $444,476.55  |


### 3. Quarterly Revenue Comparison (2021 vs 2022)

Q1 (2021 vs. 2022): Revenue increased from $870,629.97 to $2,166,847.62 (approximately 149% growth).
Q2 (2021 vs. 2022): Revenue increased from $1,434,871.83 to $2,744,480.04 (approximately 91% growth).
Q3 (2021 vs. 2022): Revenue increased from $1,452,316.11 to $2,968,730.64 (approximately 104% growth).
Q4 (2021 vs. 2022): Revenue increased from $1,202,163.06 to $2,347,325.94 (approximately 95% growth).

**2021**

| Quarter     | Revenue        |
|-------------|--------------- |
| 1st Quarter | $870,629.97    |
| 2nd Quarter | $1,434,871.83  | 
| 3rd Quarter | $1,452,316.11  | 
| 4th Quarter | $1,202,163.06  | 

**2022**

| Quarter     | Revenue        |
|-------------|--------------- |
| 1st Quarter | $2,166,847.62  |
| 2nd Quarter | $2,744,480.04  | 
| 3rd Quarter | $2,968,730.64  | 
| 4th Quarter | $2,347,325.94  | 

### 4. Revenue by Day

Tuesday, Wednesday and Monday had the highest revenue days, with over $2.2 million each.
Friday had the lowest revenue ($2,093,093.35).

| Day       | Revenue          |
|-----------|------------------|
| Sunday    | $2,111,165.26    |
| Monday    | $2,220,853.05    |
| Tuesday   | $2,242,634.78    |
| Wednesday | $2,223,975.69    |
| Thursday  | $2,180,564.75    |
| Friday    | $2,093,093.35    |
| Saturday  | $2,115,078.33    |

### 5. Revenue by Rider Type

Registered Riders generated $12,340,732, which accounted for the majority of total revenue (about 81%).
Casual Riders generated $2,846,633, accounting for 19% of total revenue.

| Rider Type        | Revenue      |
|-------------------|--------------|
| Casual Riders     | $2,846,633   |
| Registered Riders | $12,340,732  | 

## Insights Deep Dive

Based on the findings above, between 2021 and 2022, Toman Bike Share saw significant growth. It is important to understand what these numbers tell us in order to make smart choices for 2023. For this analysis, we'll prioritize analysing the insights that are important in helping our company make a good decision on whether to proceed with the proposed 25% increase in price. 

Below are the insights that will help the company more informed decision:

- Growth in Riders and Revenue
- Consistent Monthly Growth
- Strong Performance Every Quarter
- Most Revenue comes from Registered Riders

### Growth in Riders and Revenue


### Consistent Monthly Growth


### Strong Performance Every Quarter


### Most Revenue comes from Registered Riders

















