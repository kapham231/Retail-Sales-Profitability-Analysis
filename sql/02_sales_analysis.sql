-- Business Overall
SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    SUM(quantity) AS total_quantity
FROM fact_sales;

-- Sales and Profit by Year
SELECT
	dd.year as year,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	count(distinct order_id) as total_orders
FROM fact_sales s JOIN dim_date dd on s.order_date = dd.date
GROUP BY dd.year
ORDER BY dd.year DESC

-- Sales and Profit by Month Year
SELECT
	dd.month as month,
	dd.year as year,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	count(distinct order_id) as total_orders
FROM fact_sales s JOIN dim_date dd on s.order_date = dd.date
GROUP BY dd.month, dd.year
ORDER BY dd.year DESC, dd.month DESC

-- Sales and Profit by Segment
SELECT
	ds.segment as segment,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	count(distinct order_id) as total_orders
FROM fact_sales s JOIN dim_customer ds on s.customer_id = ds.customer_id
GROUP BY ds.segment

-- Sales and Profit by Region
SELECT
    region,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    count(distinct order_id) as total_orders
FROM fact_sales
GROUP BY region