--sql Retail Sales Analysis - P1
CREATE DATABASE sql_project_p2;


--create Table
Drop Table if exists Retail_Sales;

Create Table Retail_Sales(
             transactions_id int Primary key,
			 sale_date date,
			 sale_time Time,
			 customer_id int,
			 gender varchar(20),
			 age int,
			 category varchar(50),
			 quantiy int,
			 price_per_unit float,
			 cogs Float,
			 total_sale float
			 );

select* from Retail_Sales

 --Data Claning--	

Select* from Retail_Sales
Where transactions_id is Null;

Select*from retail_Sales
Where sale_date is Null;

Select*from retail_sales
Where 
transactions_id is Null
or
sale_date is Null
or
sale_time is Null
or 
customer_id is Null
or
gender is Null
or
age is Null
or
category is Null
or
quantiy is Null
or
price_per_unit is Null
or
cogs is Null
or
total_sale is Null;

Delete from Retail_sales

Where
		transactions_id is Null
		or
		sale_date is Null
		or
		sale_time is Null
		or 
		customer_id is Null
		or
		gender is Null
		or
		age is Null
		or
		category is Null
		or
		quantiy is Null
		or
		price_per_unit is Null
		or
		cogs is Null
		or
		total_sale is Null;

Select* from Retail_Sales;
		
--Data Exploration

--Q1: How many sale we have?

    select count(*) as Salecount from retail_sales;
 
--Q2: How many Unique customer we have?
    select count( distinct Customer_id) from Retail_sales;

-- Data Analysis & Business Key Problems & Answers

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)



-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
Select* FROM Retail_sales

where sale_date='2022-11-05';

-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
Select * from Retail_sales
Where category='Clothing'
      AND
	  quantiy>3
	  AND
	  To_char(Sale_date,'YYYY-MM')='2022-10';
	  
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
Select category,
sum(total_sale) as Totalsales
from retail_sales
group by category;

--Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select 
Round(avg(age),2) as avgage
from Retail_sales
Where category='Beauty';

--Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
Select* from Retail_Sales
Where Total_sale>1000;


-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
Select
	Category,
	Gender,
	count(*) as total_trans
From Retail_sales
Group 
    by 
	Category,
    Gender
Order by 1





