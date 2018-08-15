SELECT COUNT(maker) AS quantity
FROM Product
WHERE maker IN (SELECT maker
FROM Product
GROUP BY maker
HAVING COUNT(model)=1)
