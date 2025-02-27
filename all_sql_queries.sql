-- top_5_brands.sql
SELECT brand, COUNT(receipt) AS receipts_scanned
FROM transactions
WHERE age >= 21
GROUP BY brand
ORDER BY receipts_scanned DESC
LIMIT 5;

-- power_users.sql
SELECT user_id, COUNT(transaction_id) AS transaction_count
FROM transactions
GROUP BY user_id
HAVING transaction_count > 50;

-- leading_brand_in_dips_salsa.sql
SELECT brand, SUM(sales_amount) AS total_sales
FROM transactions
WHERE product_category = 'Dips & Salsa'
GROUP BY brand
ORDER BY total_sales DESC
LIMIT 1;

-- fetch_growth.sql
SELECT YEAR(transaction_date) AS year, 
       SUM(sales_amount) AS yearly_sales
FROM transactions
GROUP BY year
ORDER BY year;
