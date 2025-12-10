-- ===============================
-- 📌 DATABASE SCHEMA - E-Learning Subscriptions
-- ===============================

-- COMPANY TABLE (Corporate clients)
CREATE TABLE companies (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100),
    industry VARCHAR(100),
    company_size VARCHAR(50),
    region VARCHAR(50)
);

-- CUSTOMER TABLE (Corporate & Individual Users)
CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    account_type VARCHAR(50), -- Individual / Corporate Employee
    company_id INT NULL,
    region VARCHAR(50),
    job_role VARCHAR(100),
    age INT,
    signup_channel VARCHAR(50),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

-- SUBSCRIPTIONS TABLE (Churn + Revenue)
CREATE TABLE subscriptions (
    subscription_id SERIAL PRIMARY KEY,
    customer_id INT,
    plan_name VARCHAR(50),
    price NUMERIC(10,2),
    start_date DATE,
    end_date DATE,
    churn_flag BOOLEAN,
    cancellation_reason VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- LEARNING ACTIVITY TABLE (Engagement)
CREATE TABLE learning_activity (
    activity_id SERIAL PRIMARY KEY,
    customer_id INT,
    lessons_watched INT,
    last_active_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- SUPPORT TICKETS (Optional churn drivers)
CREATE TABLE support_tickets (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INT,
    issue_type VARCHAR(100),
    ticket_date DATE,
    resolved BOOLEAN,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

