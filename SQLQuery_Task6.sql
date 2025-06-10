create database TASK_6 ;
--- 1.Top 10 total sales using quantity * unit price by stock code
select top 10  StockCode , SUM(Quantity * UnitPrice) as total_rev
from online_sales_dataset
group by StockCode;

--- 2. Extracting month from the invoice date
select Month(InvoiceDate) as by_month, CustomerID
from online_sales_dataset
where CustomerID is not null
group by MONTH(InvoiceDate), CustomerID
order by by_month asc;

--- 3. Distinct count of stockcode with respective description (item)
select COUNT(distinct StockCode) as Unique_stockcode, Description as Item
from online_sales_dataset
group by Description;

---4. Top 10 sales of different items and by category 
select top 10 SUM(Quantity * UnitPrice) as total_price, Description as item, Category
from online_sales_dataset
group by Description, Category
order by total_price desc;

---5. Top 10 sales by countries
select top 10 SUM(Quantity * UnitPrice) as total_price, Category, Country
from online_sales_dataset
group by Description, Category, Country
order by total_price desc;

---6. Amount paid after discount
select  Quantity,UnitPrice,Discount,
       Quantity * UnitPrice AS OriginalPrice,
      (Quantity * UnitPrice) * Discount  AS DiscountAmount,
      (Quantity * UnitPrice) *(1 - Discount) AS FinalPrice
from online_sales_dataset;

---7. Sale of Items in different categories between 2023-01-01 and 2025-05-01 in different sales channel
select Description as Item, InvoiceDate, Category, SalesChannel, SUM(Quantity * UnitPrice) as total_price
from online_sales_dataset
where InvoiceDate between '2022-12-31 23:59:00.0000000' and '2025-04-30 23:59:00.0000000'
group by Description, InvoiceDate, Category, SalesChannel;
