-- Category perfomance
SELECT
    dp.category,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    sum(quantity) as total_quantity
FROM fact_sales s JOIN dim_product dp on s.product_id = dp.product_id
GROUP BY dp.category
ORDER BY total_sales DESC

-- Subcategory perfomance
SELECT
    category,
    sub_category,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    sum(quantity) as total_quantity
FROM fact_sales s JOIN dim_product dp on s.product_id = dp.product_id
GROUP BY category, sub_category
ORDER BY total_sales DESC;

-- Top 10 category by Sale
SELECT
	dp.product_id as product_id,
	dp.product_name as product_name,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	sum(quantity) as total_quantity
FROM fact_sales s join dim_product dp on s.product_id = dp.product_id
GROUP BY dp.product_id, dp.product_name
ORDER BY total_sales DESC
LIMIT 10

-- Top 10 products by Profit
SELECT
	dp.product_id as product_id,
	dp.product_name as product_name,
	sum(sales) as total_sales,
	sum(profit) as total_profit,
	sum(quantity) as total_quantity
FROM fact_sales s join dim_product dp on s.product_id = dp.product_id
GROUP BY dp.product_id, dp.product_name
ORDER BY total_profit DESC
LIMIT 10