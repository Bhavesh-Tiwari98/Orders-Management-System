SELECT
    c.category_name,
    COUNT(p.product_id) AS product_count
FROM
    Category AS c
JOIN
    Product AS p ON c.category_id = p.category_id
GROUP BY
    c.category_name
HAVING
    COUNT(p.product_id) > 1;

SELECT
    p1.product_name AS product1,
    p2.product_name AS product2,
    c.category_name
FROM
    Product AS p1
JOIN
    Product AS p2 ON p1.category_id = p2.category_id AND p1.product_id < p2.product_id
JOIN
    Category AS c ON p1.category_id = c.category_id
ORDER BY
    c.category_name;

SELECT
    p.product_name,
    c.category_name
FROM
    Product AS p
CROSS JOIN
    Category AS c
ORDER BY
    p.product_name, c.category_name;


SELECT
    c.category_name,
    COUNT(p.product_id) AS number_of_products
FROM
    Category AS c
INNER JOIN
    Product AS p ON c.category_id = p.category_id
GROUP BY
    c.category_name
ORDER BY
    number_of_products DESC;




