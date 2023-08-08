CREATE DATABASE ASS7;
SELECT * FROM ASS7.assignemnt;

SELECT * from ASS7.assignemnt
ORDER BY Estimated_sale_price ASC ;

### 1) Which product has the highest estimated sale price, and what is the price?
SELECT  Product,Price,Estimated_sale_price
FROM ASS7.assignemnt
WHERE Estimated_sale_price = (SELECT MAX(Estimated_sale_price) FROM ASS7.assignemnt)
ORDER BY Estimated_sale_price;

### 2) Calculate the total profit for each product (Estimated Sale Price - Purchase Cost).
SELECT  Product,purchase_cost,Estimated_sale_price,(Estimated_sale_price - purchase_cost) as Total_Profit 
FROM ASS7.assignemnt;

### 3) How many products have missing values in the "purchase_cost" column?
SELECT  count(Product) 
FROM ASS7.assignemnt
where purchase_cost is null;

### 4) Calculate the total purchase cost for each product.
SELECT  Product,SUM(purchase_cost)
FROM ASS7.assignemnt
group by Product;

### 5) Calculate the total revenue for each product (Quantity * Estimated Sale Price).
SELECT  Product,Quantity,Estimated_sale_price, Quantity * Estimated_sale_price as Total_Revenue
FROM ASS7.assignemnt;