# Write your MySQL query statement below

SELECT emp.name as Employee
FROM Employee emp INNER JOIN Employee mgr
ON emp.managerID = mgr.id
WHERE emp.salary > mgr.salary;
   
