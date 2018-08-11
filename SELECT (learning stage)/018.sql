SELECT DISTINCT maker, price
       FROM Product
       JOIN Printer ON Product.model = Printer.model
       WHERE  color='y' 
       AND price=(SELECT MIN(price) FROM Printer WHERE color='y')