-- Business Sales Analytics
-- Synthetic portfolio dataset: 12,000 transactions.

-- Executive KPIs
SELECT
  COUNT(*) AS transactions,
  ROUND(SUM(revenue), 2) AS total_revenue,
  ROUND(SUM(profit), 2) AS total_profit,
  ROUND(100.0 * SUM(profit) / SUM(revenue), 2) AS profit_margin_pct
FROM sales_transactions;

-- Regional performance
SELECT region,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(SUM(profit),2) AS profit,
       ROUND(100.0*SUM(profit)/SUM(revenue),2) AS margin_pct
FROM sales_transactions
GROUP BY region
ORDER BY revenue DESC;

-- Product profitability
SELECT product,
       SUM(quantity) AS units_sold,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(SUM(profit),2) AS profit
FROM sales_transactions
GROUP BY product
ORDER BY profit DESC;

-- Discount vs profitability
SELECT
  ROUND(discount*100) AS discount_pct,
  COUNT(*) AS transactions,
  ROUND(100.0*SUM(profit)/SUM(revenue),2) AS margin_pct,
  ROUND(SUM(profit),2) AS total_profit
FROM sales_transactions
GROUP BY discount
ORDER BY discount;

-- Customer segment performance
SELECT customer_segment,
       COUNT(*) AS transactions,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(SUM(profit),2) AS profit
FROM sales_transactions
GROUP BY customer_segment
ORDER BY revenue DESC;

-- Monthly sales trend
SELECT SUBSTR(order_date,1,7) AS month,
       ROUND(SUM(revenue),2) AS revenue,
       ROUND(SUM(profit),2) AS profit
FROM sales_transactions
GROUP BY month
ORDER BY month;
