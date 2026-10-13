-- Profit Margin by Category
SELECT
    dp.category,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    sum(profit) / nullif(sum(sales), 0) as profit_margin
FROM fact_sales s JOIN dim_product dp on s.product_id = dp.product_id
GROUP BY dp.category
ORDER BY profit_margin DESC;

-- Discount vs Profitability
WITH discount_analysis AS (
    SELECT
        CASE
            WHEN discount = 0 THEN '0%'
            WHEN discount <= 0.10 THEN '1-10%'
            WHEN discount <= 0.20 THEN '11-20%'
            WHEN discount <= 0.30 THEN '21-30%'
            ELSE '>30%'
        END AS discount_range,

        CASE
            WHEN discount = 0 THEN 1
            WHEN discount <= 0.10 THEN 2
            WHEN discount <= 0.20 THEN 3
            WHEN discount <= 0.30 THEN 4
            ELSE 5
        END AS discount_order,

        sum(sales) as total_sales,
        sum(profit) as total_profit,
        sum(profit) / nullif(sum(sales), 0) as profit_margin
    FROM fact_sales
    GROUP BY
        discount_range,
        discount_order
)

SELECT
    discount_range,
    total_sales,
    total_profit,
    profit_margin
FROM discount_analysis
ORDER BY discount_order

-- Discount vs Profitability
WITH discount_analysis AS (
    SELECT
        CASE
            WHEN discount = 0 THEN '0%'
            WHEN discount <= 0.10 THEN '1-10%'
            WHEN discount <= 0.20 THEN '11-20%'
            WHEN discount <= 0.30 THEN '21-30%'
            ELSE '>30%'
        END AS discount_range,

        CASE
            WHEN discount = 0 THEN 1
            WHEN discount <= 0.10 THEN 2
            WHEN discount <= 0.20 THEN 3
            WHEN discount <= 0.30 THEN 4
            ELSE 5
        END AS discount_order,

		dp.category as category,
        sum(sales) as total_sales,
        sum(profit) as total_profit,
        sum(profit) / nullif(sum(sales), 0) as profit_margin
    FROM fact_sales s JOIN dim_product dp on s.product_id = dp.product_id
    GROUP BY
        discount_range,
		dp.category,
        discount_order
)

SELECT 
	category,
	discount_range,
    total_sales,
    total_profit,
    profit_margin
FROM discount_analysis
ORDER BY category, discount_order

-- Profitability by Region
SELECT
    region,
    sum(sales) as total_sales,
    sum(profit) as total_profit,
    sum(profit) / nullif(sum(sales), 0) as profit_margin
FROM fact_sales
GROUP BY region
ORDER BY profit_margin DESC;