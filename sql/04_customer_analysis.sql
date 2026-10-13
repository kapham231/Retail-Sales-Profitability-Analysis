-- Top 10 Customer by Sale
SELECT
	dc.customer_id,
	dc.customer_name,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	count(distinct order_id) as total_sale
FROM fact_sales s JOIN dim_customer dc on s.customer_id = dc.customer_id
GROUP BY dc.customer_id, dc.customer_name
ORDER BY total_sales DESC
LIMIT 10

-- Top 10 Customer by Profit
SELECT
	dc.customer_id,
	dc.customer_name,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	count(distinct order_id) as total_sale
FROM fact_sales s JOIN dim_customer dc on s.customer_id = dc.customer_id
GROUP BY dc.customer_id, dc.customer_name
ORDER BY total_profit DESC
LIMIT 10