SELECT maker, MAX(price) AS max_price
       FROM Product
       JOIN PC ON Product.model = PC.model
       WHERE type='PC'
       GROUP BY maker
