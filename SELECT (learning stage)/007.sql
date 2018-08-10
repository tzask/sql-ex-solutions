SELECT p.model, PC.price 
FROM PC INNER JOIN 
     Product p ON PC.model = p.model 
WHERE maker='B'
UNION
SELECT p.model, lp.price 
FROM Laptop lp INNER JOIN 
     Product p ON lp.model = p.model 
WHERE maker='B'
UNION
SELECT p.model, pr.price 
FROM Printer pr INNER JOIN 
     Product p ON pr.model = p.model 
WHERE maker='B'