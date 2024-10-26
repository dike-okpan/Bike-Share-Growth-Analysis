
---------------------------- DATA PREPARATION --------------------------------------------------------

--- 2021 DATA
select *
from bike_share_01

--- 2023 DATA
select *
from bike_share_02

--- Cost Table
select *
from cost_table_01_02

---------------------- DATA MERGING AND TRANSFORMATION --------------------------------------------------

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

select *
from view_bike_sharing

------------- DATA TESTING AND QUALITY CHECKS -------------------------------------

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

------------------------------------- DATA ANALYSIS--------------------------------------------------------------------------------

------------TOTAL REVENUE------------------------------------------
select round(sum(Revenue),2) as Total_Revenue
from view_bike_sharing

------------TOTAL PROFIT-------------------------------------------
select round(sum(Profit),2) as Total_Profit
from view_bike_sharing

------------TOTAL RIDERS--------------------------------------------------
select sum(riders) as Total_Riders
from view_bike_sharing

------------TOTAL REVENUE AND PROFIT BY YEAR----------------------------------
select YEAR(Date) as Year,
	sum(riders) as Riders,
	round(sum(Revenue),0) as Revenue,
	round(sum(Profit),0) as Profit
from view_bike_sharing
group by YEAR(Date)


-----------TOTAL RIDERS, REVENUE AND PROFIT BY MONTHS FOR 2021---------------------------------
select datename(month,Date) as Month,
	sum(Riders) as Riders,
	round(sum(Revenue),2) as Revenue,
	round(sum(Profit),2) as Profit
from view_bike_sharing
where year(Date) = '2021'
group by datename(month,Date)
order by Revenue desc

-----------TOTAL RIDERS, REVENUE AND PROFIT BY MONTHS FOR 2022--------------------
select datename(month,Date) as Month,
	sum(Riders) as Riders,
	round(sum(Revenue),2) as Revenue,
	round(sum(Profit),2) as Profit
from view_bike_sharing
where year(Date) = '2022'
group by datename(month,Date)
order by Revenue desc

----------TOTAL REVENUE BY QUARTER FOR 2021----------------------------------
select DATEPART(Quarter,Date) as Quarter,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
where YEAR(Date) = '2021'
group by DATEPART(Quarter,Date)
order by Revenue desc

----------TOTAL REVENUE BY QUARTER FOR 2022----------------------------------
select DATEPART(Quarter,Date) as Quarter,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
where YEAR(Date) = '2022'
group by DATEPART(Quarter,Date)
order by Revenue desc

----------TOTAL REVENUE BY DAYS-----------------------------------------------
select datename(WEEKDAY,Date) as Days,
	round(sum(Revenue),2) as Revenue
from view_bike_sharing
group by datename(WEEKDAY,Date)
order by Revenue desc

-----------TOTAL REVENUE BY RIDER TYPE----------------------------------------
select Rider_Type,
	round(SUM(Revenue),0) as Revenue
from view_bike_sharing
group by Rider_Type


