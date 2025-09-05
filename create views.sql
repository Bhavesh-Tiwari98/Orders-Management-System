USE [order management system];
GO
  
CREATE VIEW view_customer
AS
SELECT * FROM Customer;

SELECT * FROM view_customer;

CREATE VIEW vw_HighValueProducts AS
SELECT
product_name,
price,
stock_quantity
FROM
Product
WHERE
price > 100 AND stock_quantity > 50;
GO

SELECT * FROM vw_HighValueProducts;
GO

CREATE VIEW vw_RecentCompletedOrders AS
SELECT
co.order_id,
c.first_name,
c.last_name,
co.order_date,
co.total_amount
FROM
Customer_Order AS co
INNER JOIN
Customer AS c ON co.customer_id = c.customer_id
WHERE
co.status = 'Completed'
AND co.order_date >= DATEADD(day, -90, GETDATE());
GO

SELECT * FROM vw_RecentCompletedOrders;
GO


CREATE VIEW vw_ProductSalesSummary AS
SELECT
p.product_name,
c.category_name,
SUM(od.quantity) AS total_quantity_sold,
SUM(od.quantity * od.orderprice) AS total_revenue
FROM
Order_Details AS od
INNER JOIN
Product AS p ON od.product_id = p.product_id
INNER JOIN
Category AS c ON p.category_id = c.category_id
GROUP BY
p.product_name, c.category_name;
GO

SELECT * FROM vw_ProductSalesSummary;
GO

CREATE VIEW vw_CustomerContactInfo AS
SELECT
customer_id,
first_name,
last_name,
email,
phone_number
FROM
Customer;
GO

SELECT * FROM vw_CustomerContactInfo;
GO

CREATE VIEW vw_PendingOrdersWithCustomerInfo AS
SELECT
co.order_id,
c.first_name,
c.last_name,
c.email,
co.order_date,
co.total_amount
FROM
Customer_Order AS co
INNER JOIN
Customer AS c ON co.customer_id = c.customer_id
WHERE
co.status = 'Pending';
GO

SELECT * FROM vw_PendingOrdersWithCustomerInfo;
GO
