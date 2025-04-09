-- Qn1
SELECT SUM(quantity_sold) AS Total_Sales_Volume FROM walmart_sales_cleaned;

-- Qn2 WHAT IS THE AVERAGE UNIT PRICE OF EACH PRODUCTS SOLD
SELECT product_name, AVG(unit_price) AS Average_Unit_Price FROM walmart_sales_cleaned
group by product_name;

-- Qn3
SELECT store_id, SUM(quantity_sold*unit_price) AS Revenue from walmart_sales_cleaned
group by store_id
order by revenue asc;

-- Qn4
SELECT COUNT(*) AS Transactions_Involving_Promotions FROM walmart_sales_cleaned
WHERE promotion_applied = 'True';

-- Qn5
SELECT SUM(quantity_sold * unit_price) AS Promo_Revenue FROM walmart_sales_cleaned
WHERE promotion_applied = 'True';

-- Qn6
SELECT category, SUM(quantity_sold) AS Sales_During_Holiday FROM walmart_sales_cleaned
WHERE holiday_indicator = 'True' group by category;

-- Qn7 Done in Python. Check ipynb

-- Qn8
SELECT customer_loyalty_level, COUNT(*) AS total_transactions, SUM(quantity_sold) AS total_items_purchased, SUM(quantity_sold * unit_price) AS total_revenue,
AVG(quantity_sold) AS avg_items_per_transaction, AVG(quantity_sold * unit_price) AS avg_spend_per_transaction FROM walmart_sales_cleaned
GROUP BY customer_loyalty_level;

-- Qn9 CALCULATE THE MONTHLY SALES AND FIND OUT THE TRENDS
SELECT MONTHNAME(transaction_date) AS Month, SUM(unit_price * quantity_sold) AS total_revenue FROM walmart_sales_cleaned
GROUP BY MONTHNAME(transaction_date)
ORDER BY total_revenue Desc;

-- Qn10 WHICH PRODUCT HAS THE BEST PERFORMANCE IN TERMS OF VOLUME?
SELECT product_name, SUM(quantity_sold) AS Product_Revenue FROM walmart_sales_cleaned
GROUP BY product_name ORDER BY Product_Revenue DESC;






