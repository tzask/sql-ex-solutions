SELECT speed, AVG(price) AS avg_price
       FROM PC
       GROUP BY speed
       HAVING speed > 600