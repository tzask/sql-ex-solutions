SELECT DISTINCT maker, COUNT(model) AS model_quantity
       FROM Product
       WHERE type='PC'
       GROUP BY maker
       HAVING COUNT(model) >= 3
