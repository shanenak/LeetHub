# Write your MySQL query statement below
SELECT t1.request_at AS Day, ROUND(SUM(status!='completed')/COUNT(*),2) AS 'Cancellation Rate'
FROM Trips t1
LEFT JOIN Users clt
ON (t1.client_id=clt.users_id)
LEFT JOIN Users drv
ON (t1.driver_id=drv.users_id)
WHERE (clt.banned='No' AND drv.banned='No' AND t1.request_AT BETWEEN "2013-10-01" AND "2013-10-03")
GROUP BY t1.request_at;








# SELECT 
#   request_at AS Day, 
#   ROUND(
#     SUM(status != 'completed') / COUNT(*), 
#     2
#   ) AS 'Cancellation Rate' 
# FROM 
#   Trips 
#   LEFT JOIN Users AS Clients ON Trips.client_id = Clients.users_id 
#   LEFT JOIN Users AS Drivers ON Trips.driver_id = Drivers.users_id 
# WHERE 
#   Clients.banned = 'No' 
#   AND Drivers.banned = 'No' 
#   AND request_at BETWEEN '2013-10-01' 
#   AND '2013-10-03' 
# GROUP BY 
#   Day