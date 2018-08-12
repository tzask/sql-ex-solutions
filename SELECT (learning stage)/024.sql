WITH price_all(model, price) AS(
     SELECT model, price FROM PC
     UNION ALL
     SELECT model, price FROM Laptop
     UNION ALL
     SELECT model, price FROM Printer
     )
SELECT DISTINCT model FROM price_all 
WHERE price = (SELECT MAX(price) FROM price_all)
