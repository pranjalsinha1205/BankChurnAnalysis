-- use the database
USE bank_churn_db;

-- show tables
SHOW TABLES;

-- retrieve the table
SELECT * FROM bank_customer_churn;

-- retrieve entries per country
SELECT country, COUNT(country) as count
FROM bank_customer_churn
GROUP BY country;

-- retrieve average credit_score, age, tenure, estimated_salary, products number, and balance per country
SELECT country, 
ROUND(AVG(credit_score), 2) AS avg_credit_score, 
ROUND(AVG(age), 2) AS avg_age, ROUND(AVG(tenure), 2) AS avg_tenure, 
ROUND(AVG(estimated_salary), 2) AS avg_estimated_salary, 
ROUND(AVG(balance), 2) AS avg_balance, ROUND(AVG(products_number)) AS avg_products_number
FROM bank_customer_churn
GROUP BY country
ORDER BY country;

-- check whether the person has credit card or not
SELECT credit_card, COUNT(credit_card) AS count
FROM bank_customer_churn
GROUP BY credit_card;

-- number of active members
SELECT active_member, COUNT(active_member) AS count
FROM bank_customer_churn
GROUP BY active_member;

-- number of churn 
SELECT churn, COUNT(churn) as count
FROM bank_customer_churn
GROUP BY churn;

-- churn rate by country
SELECT 
  country, 
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY country
ORDER BY churn_rate DESC;

-- churn rate by gender
SELECT 
  gender,
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY gender;

-- age group vs. churn
SELECT 
  CASE 
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 50 THEN '30–50'
    ELSE 'Above 50'
  END AS age_group,
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY age_group
ORDER BY age_group;

-- active vs inactive member churn
SELECT 
  active_member,
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY active_member;

-- product number vs churn
SELECT 
  products_number,
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY products_number
ORDER BY products_number;

-- credit score segmentation
SELECT 
  CASE 
    WHEN credit_score < 600 THEN 'Low'
    WHEN credit_score BETWEEN 600 AND 750 THEN 'Medium'
    ELSE 'High'
  END AS credit_score_segment,
  COUNT(*) AS total_customers,
  SUM(churn) AS churned_customers,
  ROUND(100 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM bank_customer_churn
GROUP BY credit_score_segment;