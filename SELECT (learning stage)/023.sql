SELECT DISTINCT maker
       FROM Product
       JOIN PC ON Product.model = PC.model
       WHERE type='PC'
       GROUP BY maker, speed
       HAVING speed >= 750
INTERSECT
SELECT DISTINCT maker
       FROM Product
       JOIN Laptop ON Product.model = Laptop.model
       WHERE type='Laptop'
       GROUP BY maker, speed
       HAVING speed >= 750