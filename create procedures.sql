create procedure a1
as
begin
select product_name,price,stock_quantity from product ;
end;

exec a1;

create procedure b1
as
begin
select category_id ,category_name from category;
end;

exec b1;

CREATE PROCEDURE c1
    @CustomerID INT
AS
BEGIN
    SELECT
        co.order_id,
        co.order_date,
        co.total_amount,
        od.quantity,
        od.orderprice,
        p.product_name,
        p.price AS current_product_price
    FROM
        Customer_Order AS co
    JOIN
        Order_Details AS od ON co.order_id = od.order_id
    JOIN
        Product AS p ON od.product_id = p.product_id
    WHERE
        co.customer_id = @CustomerID
    ORDER BY
        co.order_date DESC;
END;

EXEC c1 @CustomerID = 1;
EXEC c1 @CustomerID = 2;







