# Power BI Dashboard Build

Import `sales_transactions.csv`.

## Recommended visuals
1. KPI cards: Total Revenue, Total Profit, Profit Margin, Transactions
2. Line chart: Revenue by Order Date (month)
3. Clustered bar chart: Revenue and Profit by Region
4. Bar chart: Profit by Product
5. Column chart: Profit Margin by Discount
6. Donut chart: Revenue by Customer Segment
7. Slicers: Region, Category, Customer Segment, Sales Channel

## DAX measures
```DAX
Total Revenue = SUM(sales_transactions[Revenue])

Total Profit = SUM(sales_transactions[Profit])

Profit Margin = DIVIDE([Total Profit], [Total Revenue])

Transactions = COUNTROWS(sales_transactions)

Average Order Value = DIVIDE([Total Revenue], [Transactions])
```

## Story to communicate
The dashboard should answer: where is revenue coming from, which products/regions generate profit,
and how does heavier discounting affect margin?
