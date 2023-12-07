# Write your MySQL query statement below
SELECT dpt.name Department, emp.name Employee, emp.salary Salary
FROM Employee emp
LEFT JOIN Department dpt
ON emp.departmentID = dpt.id
WHERE (dpt.id, emp.salary)
IN (
    SELECT departmentId, MAX(salary) 
    FROM Employee
    GROUP BY departmentId
);

# SELECT Department.name AS Department ,Employee.name AS Employee, Employee.salary
# FROM Department  JOIN Employee  ON Employee.departmentId=Department.id 
# WHERE(departmentId, salary) IN
# (SELECT departmentId,MAX(salary) FROM Employee GROUP BY departmentId) ;