# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers cmr
LEFT JOIN Orders odr
ON cmr.id = odr.customerId
GROUP BY cmr.id
HAVING COUNT(odr.id)=0;