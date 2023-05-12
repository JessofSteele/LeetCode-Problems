# Write your MySQL query statement below
SELECT T.employee_id
FROM
    (SELECT * FROM Employees LEFT JOIN salaries USING (employee_id)
    UNION
    SELECT * FROM Employees RIGHT JOIN salaries USING (employee_id))
AS T
WHERE T.salary IS Null or T.name IS Null
ORDER BY employee_id;
