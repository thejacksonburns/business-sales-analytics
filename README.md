# Business Sales Analytics

Interactive Power BI dashboard analyzing revenue, profitability, regional performance, product categories, sales channels, and monthly sales trends.

![Business Sales Analytics Dashboard](business_sales_dashboard.png)

A portfolio analytics project using **SQL, Python, Excel, SQLite, and Power BI** to analyze 12,000 synthetic sales transactions and evaluate revenue, profitability, customers, products, regions, and discounting.

## Business Questions
- Which regions and products generate the most revenue and profit?
- How does discounting affect profit margin?
- Which customer segments contribute the most sales?
- What trends should a manager monitor when balancing growth and profitability?

## Dataset
The project contains 12,000 synthetic transactions with order dates, customers, regions, channels, products, quantities, prices, discounts, revenue, costs, profit, and profit margin.

## Tools
- SQL / SQLite
- Python
- Microsoft Excel
- Power BI
- GitHub

## Key Results
- **Total revenue:** $9,201,590
- **Total profit:** $1,706,124
- **Overall profit margin:** 18.5%
- **Highest-revenue region:** Midwest
- **Top product by profit:** Laptop Pro 14

The discount analysis shows why sales volume and revenue should be evaluated alongside margin: deeper discounts can materially reduce profitability even when they help generate sales.

## Repository Structure
- `sales_transactions.csv` — 12,000-row analysis dataset
- `business_sales_analytics.xlsx` — Excel data model and dashboard
- `sales_analytics.sqlite` — SQLite database
- `analysis.sql` — business analysis queries
- `analysis.py` — Python analysis
- `POWER_BI_GUIDE.md` — Power BI layout and DAX measures
- `FINDINGS.md` — verified findings and business takeaways

## Power BI Dashboard
The Power BI report is designed around executive KPIs, monthly trends, regional performance, product profitability, customer segments, and discount-vs-margin analysis. See `POWER_BI_GUIDE.md` for the dashboard specification and measures.

## Portfolio Note
This project uses **synthetic data created for portfolio analysis**. It does not contain real customer, company, or proprietary information.
