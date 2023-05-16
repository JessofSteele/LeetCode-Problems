# Write your MySQL query statement below
SELECT a.name AS 'Employee'
FROM
    Employee AS a,
    Employee AS b
WHERE
    a.ManagerID = b.ID
        AND a.Salary > b.Salary;