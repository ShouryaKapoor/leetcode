/*
02/07/2024
177. Nth Highest Salary
Solved
Medium
Topics
Companies
SQL Schema
Pandas Schema
Table: Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key (column with unique values) for this table.
Each row of this table contains information about the salary of an employee.
 

Write a solution to find the nth highest salary from the Employee table. If there is no nth highest salary, return null.

The result format is in the following example.

 

Example 1:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+
Example 2:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
n = 2
Output: 
+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| null                   |
+------------------------+

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
*/
/*
Code: 
*/
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M=N-1;
RETURN (
# Write your MySQL query statement below.
SELECT DISTINCT Salary FROM Employee ORDER BY Salary DESC LIMIT M, 1
);
END

/*
Output Test case:

Accepted
Runtime: 112 ms
Case 1
Input
Employee =
| id | salary |
| -- | ------ |
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
argument =
2
Output
| getNthHighestSalary(2) |
| ---------------------- |
| 200                    |
Expected
| getNthHighestSalary(2) |
| ---------------------- |
| 200                    |


Case 2
Input
Employee =
| id | salary |
| -- | ------ |
| 1  | 100    |
argument =
2
Output
| getNthHighestSalary(2) |
| ---------------------- |
| null                   |
Expected
| getNthHighestSalary(2) |
| ---------------------- |
| null                   |
