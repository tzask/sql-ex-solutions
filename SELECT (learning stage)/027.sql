SELECT maker, AVG(hd) AS avg_hd
       FROM Product
       JOIN PC ON Product.model = PC.model
       WHERE maker IN(SELECT maker FROM Product WHERE type='Printer')
       GROUP BY maker