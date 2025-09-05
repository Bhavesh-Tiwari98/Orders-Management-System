create procedure Loyalty1
    @CustomerID INT
AS
BEGIN
    SELECT
        C.customer_id,
        C.first_name,
        C.last_name,
        COUNT(CO.order_id) AS total_orders,
        -- The CASE statement assigns a loyalty level based on the total number of orders.
        CASE
            WHEN COUNT(CO.order_id) = 0 THEN 'New Customer'
            WHEN COUNT(CO.order_id) BETWEEN 1 AND 5 THEN 'Bronze'
            WHEN COUNT(CO.order_id) BETWEEN 6 AND 15 THEN 'Silver'
            WHEN COUNT(CO.order_id) > 15 THEN 'Gold'
            ELSE 'Unknown'
        END AS LoyaltyLevel
    FROM
        Customer AS C
    LEFT JOIN
        Customer_Order AS CO ON C.customer_id = CO.customer_id
    WHERE
        C.customer_id = @CustomerID
    GROUP BY
        C.customer_id, C.first_name, C.last_name;
END;

EXEC Loyalty1 @CustomerID = 1;
EXEC Loyalty1 @CustomerID = 2;
EXEC Loyalty1 @CustomerID = 3;
EXEC Loyalty1 @CustomerID = 4;
EXEC Loyalty1 @CustomerID = 5;
EXEC Loyalty1 @CustomerID = 6;
EXEC Loyalty1 @CustomerID = 7;
EXEC Loyalty1 @CustomerID = 8;
EXEC Loyalty1 @CustomerID = 9;
EXEC Loyalty1 @CustomerID = 10;
