SELECT AVG(speed) AS avg_speed
       FROM PC
       JOIN Product ON PC.model = Product.model
       WHERE maker = 'A'