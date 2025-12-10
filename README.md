# 📊 E-Learning Customer Churn & Revenue Insights (Tableau + SQL)

This project analyzes **customer churn and revenue risk** for an e-learning subscription platform.  
It uses **PostgreSQL + SQL** for data modelling and **Tableau** for visual analytics.

---

## 🎯 Business Objective

Management wants to understand:

- 📌 How many customers are churning overall  
- 🏢 Which **customer segment** churns the most (Corporate vs Individual)  
- 🌍 Which **regions** are most at risk  
- 💰 What is the **revenue loss due to churn**  
- 🎯 Which segments should be prioritized for retention  

---

## 🧱 Data Model  

To support the required analytics, data is modelled at the **customer level**, tracking churn & revenue:

| Column | Description |
|--------|-------------|
| `customer_id` | Unique user identifier |
| `account_type` | Corporate or Individual |
| `region` | Customer region (US, UK, Japan, etc.) |
| `churn_flag` | 1 = churned, 0 = active |
| `annual_revenue` | Revenue contribution from the customer |

📌 **Table SQL scripts are in `sql/` folder**  
- `schema.sql`
- `analysis_queries.sql`

---

## 🧠 Business Insights (Key Findings)

✔ **Individual users churn ~3x more than corporate users**  
✔ Regions with both **high churn + high revenue** (e.g., USA Individual segment) are a priority  
✔ A **5% churn reduction** for high-value segments can save **~$150K/year**  
✔ **Retention campaigns for individual learners** will drastically reduce overall churn

---

## 📊 Tableau Dashboard

The dashboard includes:

- KPIs (Total Customers, Avg Churn %, Corporate vs Individual Churn)
- Churn by Account Type  
- Churn by Region & Account Type  
- Estimated Annual Revenue by Region  
- Insight text boxes explaining business impact  

📌 **Live Dashboard Link:**  
🔗 https://public.tableau.com/app/profile/yashaswini.anadka.chandrashekhar/viz/elearning_churn_dashboard/Dashboard2?publish=yes

📸 **Dashboard Preview:**

<img width="1919" height="993" alt="dashboard_overview" src="https://github.com/user-attachments/assets/d845dce4-5f7f-4eeb-94a2-f11914ae509d" />


---

## 🧪 How to Reproduce

1. Create a PostgreSQL database  
2. Run `schema.sql` to create tables  
3. Load synthetic/real data into `customers` table  
4. Run `analysis_queries.sql` to compute metrics  
5. Open `elearning_churn_dashboard.twbx` in Tableau  
6. Connect Tableau to your database and refresh

---

## 🛠 Tech Stack

| Component | Tool |
|-----------|------|
| Database | PostgreSQL |
| Querying | SQL |
| BI & Visualisation | Tableau Public |
| Industry Concepts | Churn analytics, revenue risk modelling |

---

## 👩‍💼 Author

**Yashaswini A. Chandrashekhar**  
_Data Analyst | BI Developer_  
📍 London, UK  
🔗 LinkedIn: https://www.linkedin.com/in/yashaswiniac  
💻 GitHub: https://github.com/Yashaswini9ac

---

## 📎 License  
This project is open-source under the **MIT License**.

---

