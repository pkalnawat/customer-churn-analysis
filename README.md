# Customer Churn Analysis

## Problem Statement

Customer churn is a key challenge for businesses as it directly impacts revenue and growth.  
The goal of this project is to analyze customer data and identify patterns that explain why customers leave, and what factors are most strongly associated with churn.

---

## Objective

- Measure overall churn rate
- Compare behavior between active and churned customers
- Analyze churn across customer tenure
- Identify financial and behavioral drivers of churn

---

## Tools Used

- SQL for data extraction and analysis  
- Tableau for data visualization and dashboard creation  

---

## Dashboard

View Interactive Dashboard:
https://public.tableau.com/views/CustomerChurnAnalysisDashboard_17762904985950/Dashboard1

![Customer Churn Dashboard](https://raw.githubusercontent.com/pkalnawat/customer-churn-analysis/main/images/dashboard.png)

---

## Analysis and Insights

### Overall Churn

Approximately 29% of customers have churned, indicating a meaningful retention problem that can impact long-term revenue.

### Customer Engagement

Churned customers show lower average session duration compared to active customers.  
This suggests that reduced engagement is an early signal of churn risk.

### Membership Duration

Churn rate remains relatively consistent across all tenure groups.  
This indicates that customer tenure alone does not significantly influence churn behavior.

### Credit Balance

Customers with lower or zero credit balance have significantly higher churn rates.  
Churn decreases as credit balance increases, indicating that financially engaged customers are more likely to stay.

---

## Project Structure

- sql/ → SQL queries used for analysis  
- images/ → Dashboard screenshot  
- README.md → Project documentation  

---

## Conclusion

The analysis shows that customer behavior and financial engagement are stronger indicators of churn than tenure.  
Customers who are less engaged or have lower credit balance are more likely to leave.  

These insights can help businesses focus on improving engagement and targeting high-risk customers to reduce churn.

---

## Notes

The dashboard was built using Tableau and is supported by SQL based analysis to ensure accuracy of metrics and insights.
