SELECT DISTINCT type, Product.model, Laptop.speed
       FROM Product
       JOIN Laptop ON Product.model = Laptop.model
       WHERE speed < ALL(SELECT speed FROM PC)