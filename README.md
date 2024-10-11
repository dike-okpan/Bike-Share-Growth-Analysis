# Tomen Bike Share

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

I combined 2021 table and 2022 table using a UNION, created a Common Table Expression (CTE), performed a LEFT JOIN between the CTE and Cost Table, and then created a VIEW.

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
3. Checked for duplicate records. We had more than more than one ride transactions in some particular days, so the duplicates are excepted and does not indicate any issue.
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

In 2021, about 1.2 million people used our bikes. Fast forward to 2022, and that number jumped to 2 million, which is a 65% increase.
This also meant more money coming in. Our revenue more than doubled, going from $5 million in 2021 to $10 million in 2022. And since we kept our costs under control, our profits also grew by 106%, from $3.4 million to $7 million.

### Consistent Monthly Growth

If we look at how we performed month by month, we see a steady rise throughout the year. For example, in July, August, and September of 2022, we made over $900,000 each month; more than double the revenue from the same months in 2021.

### Strong Performance Every Quarter

Breaking it down by quarters (three-month periods), the numbers tell a clear story:

- In the first quarter (January to March) of 2022, we made $2.1 million, which is almost 150% more than the same time in 2021.
- Every quarter of 2022 showed growth of around 90% to 104% compared to the previous year.

### Most Revenue come from Registered Riders

Our registered riders were the biggest contributors, bringing in $12.3 million, which is about 81% of our total revenue in 2022. Casual riders brought in $2.8 million (19%).
This tells us that while casual riders are important, the real backbone of our business is our loyal or registered customers.


# Recommendations

What does this mean for 2023?

In 2022, we raised the price of bikes by 25%, but surprisingly, the number of riders increased by 65%. This tells us that customers were still interested even with the higher prices. Our data shows that the demand for our service is high, and a price increase didn’t slow us down. This suggests that people are willing to accept a further price increase.
For 2023, we would recommend that we try a smaller price increase of 10% instead of another 25% to see how customers respond. This will help us understand how sensitive they are to changes in price and allow us to adjust if needed.

However, considering the significant contribution from registered riders, keeping our loyal consumers happy by offering discounts or other promotions should be a top priority. This might be key to maintaining this segment, particularly with the anticipated price increase.

### Action Plan

Now, what steps do we take to implement the recommended decisions effectively?

1) Proceed with a 10% price increase.
2) Launch a loyalty program to reward registered riders.
3) Run a marketing campaign aimed at casual riders to increase usage and convert them to registered riders.
4) Monitor customer satisfaction and the impact of the price increase monthly to adjust if needed.
5) Introduce promotional offers on Fridays and weekends to boost revenue for our low-performance days.

### Further Analysis

To make sure we fully understand this trend, we should also look into why we still had high demand despite the price jump, by conducting further research based on customer satisfaction; and also explore if we're in a competitive or monopolistic market.

# Queries

## SQL Queries

### DATA EXPLORATION

```sql
--- 2021 DATA
select *
from bike_share_01

--- 2023 DATA
select *
from bike_share_02

--- Cost Table
select *
from cost_table_01_02

```

### DATA MERGING AND TRANSFORMATION

```sql
/*
1. Union the 2021 table and 2022 table
2. Create a CTE
3. Left join with Cost Table
4. Create view
*/

create view view_bike_sharing as

with cte as
	(select *
	from bike_share_01
	union
	select *
	from bike_share_02)

select Date,
	rider_type as Rider_Type,
	riders as Riders,
	round(price,2) as Price,
	round(COGS,2) as Cost_of_Goods,
	round(riders * price,2) as Revenue,
	round((riders * price) - (COGS * riders),2) as Profit
from cte a
left join cost_table_01_02 b
	on a.yr = b.yr

```

### DATA TESTING AND QUALITY CHECKS

```sql
--- Row count test
select count(*) as Total_Rows
from view_bike_sharing

--- Column count test
select count(*) as Total_Columns
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_bike_sharing'

--- Data type check
select COLUMN_NAME,
		DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_bike_sharing'

--- Duplicates check
select *,
	count(*) as Duplicates
from view_bike_sharing
group by Date, Rider_Type, Riders, Price, Cost_of_Goods, Revenue, Profit
having count(*) > 1

```

### TOTAL REVENUE

```sql
select round(sum(Revenue),2) as Total_Revenue
from view_bike_sharing

```

### TOTAL PROFIT

```sql
select round(sum(Profit),2) as Total_Profit
from view_bike_sharing

```

### TOTAL RIDERS

```sql
select sum(riders) as Total_Riders
from view_bike_sharing

```

### TOTAL REVENUE AND PROFIT BY YEAR

```sql
select YEAR(Date) as Year,
	sum(riders) as Riders,
	round(sum(Revenue),0) as Revenue,
	round(sum(Profit),0) as Profit
from view_bike_sharing
group by YEAR(Date)

```

### TOTAL RIDERS, REVENUE AND PROFIT BY MONTHS FOR 2021

```sql
select datename(month,Date) as Month,
	sum(Riders) as Riders,
	round(sum(Revenue),2) as Revenue,
	round(sum(Profit),2) as Profit
from view_bike_sharing
where year(Date) = '2021'
group by datename(month,Date)
order by Revenue desc

```

### TOTAL RIDERS, REVENUE AND PROFIT BY MONTHS FOR 2022

```sql
select datename(month,Date) as Month,
	sum(Riders) as Riders,
	round(sum(Revenue),2) as Revenue,
	round(sum(Profit),2) as Profit
from view_bike_sharing
where year(Date) = '2022'
group by datename(month,Date)
order by Revenue desc

```

### TOTAL REVENUE BY QUARTER FOR 2021

```sql
select DATEPART(Quarter,Date) as Quarter,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
where YEAR(Date) = '2021'
group by DATEPART(Quarter,Date)
order by Revenue desc

```

### TOTAL REVENUE BY QUARTER FOR 2022

```sql
select DATEPART(Quarter,Date) as Quarter,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
where YEAR(Date) = '2022'
group by DATEPART(Quarter,Date)
order by Revenue desc

```

### TOTAL REVENUE BY DAYS

```sql
select datename(WEEKDAY,Date) as Days,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
group by datename(WEEKDAY,Date)
order by Revenue desc

```
### TOTAL REVENUE BY RIDER TYPE

```sql
select Rider_Type,
	round(SUM(Revenue),0) as Revenue
from view_bike_sharing
group by Rider_Type

```







