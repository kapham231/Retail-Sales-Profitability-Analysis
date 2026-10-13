-- Grain check
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT row_id) AS unique_rows,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS total_customers,
    COUNT(DISTINCT product_id) AS total_products
FROM fact_sales;

-- Check null
SELECT
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_customer,
    COUNT(*) FILTER (WHERE product_id IS NULL) AS missing_product,
    COUNT(*) FILTER (WHERE order_date IS NULL) AS missing_order_date,
    COUNT(*) FILTER (WHERE sales IS NULL) AS missing_sales,
    COUNT(*) FILTER (WHERE profit IS NULL) AS missing_profit
FROM fact_sales

-- Check duplicate rowID
SELECT
    row_id,
    COUNT(*) AS count
FROM fact_sales
GROUP BY row_id
HAVING COUNT(*) > 1;

-- Date check
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    MIN(ship_date) AS first_ship_date,
    MAX(ship_date) AS last_ship_date
FROM fact_sales;

-- Check invalid dates
SELECT COUNT(*) AS invalid_ship_dates
FROM fact_sales
WHERE ship_date < order_date;

-- Check invalid discount
SELECT COUNT(*) AS invalid_discount
FROM fact_sales
WHERE discount < 0
   OR discount > 1;

-- Check invalid quantity
SELECT COUNT(*) AS invalid_quantity
FROM fact_sales
WHERE quantity <= 0;

-- Check invalid sale
SELECT COUNT(*) as invalid_sale
FROM fact_sales
WHERE sales <= 0