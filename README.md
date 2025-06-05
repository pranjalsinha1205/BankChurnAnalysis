## 🔍 Detailed Analysis

This project explores key behavioral, demographic, and financial patterns that correlate with customer churn in a retail banking environment. Below are the findings derived from extensive SQL analysis and visualized via Power BI.

---

### 1. 🌍 Country-wise Churn Behavior

- **Germany** exhibits a significantly higher churn rate (**32%**) compared to **Spain (17%)** and **France (16%)**.
- This may indicate that banking policies or customer satisfaction in Germany are weaker, or customers face more competitive alternatives.
- Strategic retention efforts may need to be localized, especially focusing on German customers.

---

### 2. 🧑‍🤝‍🧑 Gender-wise Churn Insights

- Female customers represent **60.37%** of total churn, with an average churn rate of **25%**.
- In contrast, male customers have a lower churn rate of **16%**, comprising just **39.63%** of churned users.
- This suggests possible product mismatch or customer experience issues disproportionately affecting female clientele.

---

### 3. 🧓 Churn by Age Group

- The **46–60** age group shows the highest churn rate at **51%**, followed by **60+ (25%)**.
- Surprisingly, **younger customers (<30)** are the most loyal, with only **8%** churning.
- Middle-aged and older customers might be more sensitive to service quality or more prone to explore competitor offerings.

---

### 4. 📦 Churn by Number of Products

- Customers with **3 products** show a staggering **83% churn rate**, while those with **4 products** churn at **100%**.
- This contradicts the assumption that product bundling increases loyalty; instead, it may signal dissatisfaction due to complexity or poor product synergy.
- Churn is lowest (only **8%**) among customers with **2 products**, suggesting a sweet spot for cross-selling.

---

### 5. 🟢 Active vs Inactive Members

- Inactive members churn at a much higher rate than active members.
- This validates that **engagement is a strong indicator of retention**.
- Banks could proactively target inactive members with engagement campaigns or loyalty programs.

---

### 6. 💳 Credit Score vs Balance: Scatter Plot Interpretation

- No strong linear relationship observed between **credit score** and **balance** for churned vs non-churned customers.
- However, a concentration of churned customers is seen around **mid-range credit scores (400–700)** and lower balances.
- This segment might represent customers with moderate financial strength but poor service alignment.

---

### 7. 📈 Overall Churn Rate

- The total churn rate in the dataset is **20.37%**, i.e., 2,037 out of 10,000 customers.
- While this is moderate, the sharp disparities across demographics and behavioral metrics suggest that **targeted interventions** could significantly reduce this figure.

---

## 🎯 Key Business Takeaways

- **Personalized Retention Campaigns**: Gender, age, and country-level variations imply that a “one-size-fits-all” strategy won’t work.
- **Rethink Cross-Selling Strategy**: More products ≠ more loyalty. Focus should be on **quality of product mix**, not quantity.
- **Customer Engagement Matters**: Active customers are more likely to stay. Loyalty programs or personalized communication can help maintain engagement.
- **Segmented Risk Scoring**: Combine behavioral indicators (product use, activity level) with financial metrics (credit score, balance) to develop a **churn risk model**.

---

## 📊 Visual Storytelling with Power BI

The Power BI dashboard allows:
- Real-time filtering by **age group**, **gender**, **active status**, and **churn status**.
- Clear segmentation of churn rates by key features.
- An interactive scatter plot to compare **credit score vs balance** dynamics across churn outcomes.
- Fast decision-making support for business stakeholders.

---

## 📌 Final Thoughts

This analysis demonstrates how even a simple customer dataset can uncover **deep, actionable insights** when combined with structured querying and thoughtful visual analytics. Such churn analysis can form the backbone of a **customer retention strategy**, enabling banks to shift from reactive to proactive customer management.

---

