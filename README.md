# Task-6
This project involves basic SQL queries to analyze sales data from the online_sales_dataset table.

Columns Used:
Invoice number
Stockcode
Description
Quantity: Number of items sold
UnitPrice: Price per unit
CustomerId
Country
Invoice date
Sales channel
Discount
etc

Key Calculations:
Original Price: Quantity * UnitPrice

Discount Amount: OriginalPrice * Discount

Final Price: OriginalPrice * (1 - Discount)

Queries used
Sum, Count(disinct)
Group by, order by
Where (limited dates of invoice date)
extracted month
