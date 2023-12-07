# -CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
# -BEGIN
# -SET N = N-1;
# -  RETURN (
# -      # Write your MySQL query statement below.
# -   SELECT DISTINCT salary FROM Employee
# -   ORDER BY salary DESC
# -   LIMIT 1 OFFSET N
# -  );
# -END

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      SELECT DISTINCT(salary) from Employee order by salary DESC
      LIMIT 1 OFFSET N
      
  );
END