-- creating database
CREATE DATABASE IF NOT EXISTS bank_churn_db;

-- creating table
CREATE TABLE `bank_churn_db`.`bank_customer_churn` (`customer_id` int, `credit_score` int, `country` text, `gender` text, `age` int, `tenure` int, `balance` double, `products_number` int, `credit_card` int, `active_member` int, `estimated_salary` double, `churn` int)