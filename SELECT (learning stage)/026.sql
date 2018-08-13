WITH joined_table AS (
SELECT PC.price AS price
       FROM Product
       JOIN PC ON PC.model = Product.model
       WHERE maker = 'A'
UNION ALL
SELECT Laptop.price AS price
       FROM Product
       JOIN Laptop ON Laptop.model = Product.model
       WHERE maker = 'A'
)
SELECT AVG(price)
       FROM joined_table
