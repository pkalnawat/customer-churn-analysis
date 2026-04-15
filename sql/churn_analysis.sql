-- Customer Churn Analysis (SQL)

-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM Customers;


-- 2. Average revenue per customer
SELECT AVG(Average_Order_Value) AS avg_revenue_per_customer
FROM Customers;


-- 3. Overall churn rate
SELECT 
  COUNT(CASE WHEN Churned = 1 THEN 1 END) * 1.0 / COUNT(*) AS churn_rate
FROM Customers;


-- 4. Revenue comparison (Active vs Churned)
SELECT 
  Churned,
  AVG(Average_Order_Value) AS avg_revenue
FROM Customers
GROUP BY Churned;


-- 5. Churn rate by membership duration
SELECT 
  CASE 
    WHEN Membership_Years < 1 THEN '0-1 years'
    WHEN Membership_Years < 3 THEN '1-3 years'
    WHEN Membership_Years < 5 THEN '3-5 years'
    ELSE '5+ years'
  END AS tenure_group,
  COUNT(*) AS total_customers,
  SUM(CASE WHEN Churned = 1 THEN 1 ELSE 0 END) * 1.0 / COUNT(*) AS churn_rate
FROM Customers
GROUP BY tenure_group
ORDER BY churn_rate DESC;


-- 6. Session duration (engagement vs churn)
SELECT 
  Churned,
  AVG(Session_Duration_Avg) AS avg_session_duration
FROM Customers
GROUP BY Churned;


-- 7. Inactivity vs churn
SELECT 
  Churned,
  AVG(Days_Since_Last_Purchase) AS avg_days_inactive
FROM Customers
GROUP BY Churned;
