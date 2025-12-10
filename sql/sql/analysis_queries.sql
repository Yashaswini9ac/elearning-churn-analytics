-- ===============================
-- 📊 CHURN & REVENUE ANALYTICS SQL
-- ===============================

-- 📌 TOTAL CUSTOMERS
SELECT COUNT(*) AS total_customers FROM customers;

-- 📌 OVERALL CHURN RATE
SELECT 
  ROUND(100.0 * SUM(churn_flag::Int) / COUNT(*), 1) AS churn_rate_pct
FROM subscriptions;

-- 📌 CHURN BY ACCOUNT TYPE
SELECT 
  account_type,
  ROUND(100.0 * SUM(churn_flag::Int) / COUNT(*), 1) AS churn_rate_pct
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
GROUP BY account_type;

-- 📌 CHURN BY REGION + ACCOUNT TYPE
SELECT 
  region,
  account_type,
  ROUND(100.0 * SUM(churn_flag::Int) / COUNT(*), 1) AS churn_rate_pct
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
GROUP BY region, account_type
ORDER BY region, account_type;

-- 📌 ESTIMATED ANNUAL REVENUE BY REGION
SELECT 
  region,
  CONCAT('$', ROUND(SUM(price) / 1000000, 2), 'M') AS est_annual_revenue
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
WHERE churn_flag = FALSE
GROUP BY region;

-- 📌 HIGH VALUE + HIGH CHURN SEGMENTS
SELECT 
  region,
  account_type,
  ROUND(AVG(price), 2) AS avg_price,
  ROUND(100.0 * SUM(churn_flag::Int) / COUNT(*), 1) AS churn_rate_pct
FROM customers c
JOIN subscriptions s ON c.customer_id = s.customer_id
GROUP BY region, account_type
HAVING 
  ROUND(100.0 * SUM(churn_flag::Int) / COUNT(*), 1) > 20; -- risky segments

