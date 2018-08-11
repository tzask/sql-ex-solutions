SELECT maker, AVG(screen) as avg_screen
       FROM Product
       JOIN Laptop ON Product.model = Laptop.model
       WHERE type='Laptop'
       GROUP BY maker
