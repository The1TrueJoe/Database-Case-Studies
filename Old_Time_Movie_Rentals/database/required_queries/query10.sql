/*
List all the managers and the names of the employees they manage. Sort by manager ID then by employee ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

/* Selects EmployeeName and rename it to Manager for first EMPLOYEE table and selects EmployeeName and rename it as Employee from second EMPLOYEE table*/
select e.EmployeeName as Manager, e2.EmployeeName as Employee

/* Specifies that the select is from two identical EMPLOYEE tables, but they are renamed so you can refernece them individually */
from EMPLOYEE e, EMPLOYEE e2

/* Only displays rows where ManagerSIN and EmployeeSIN are equal */
where e.ManagerSIN = e.EmployeeSIN

/* First order by ManagerSIN and then by EmployeeSIN */
order by e.ManagerSIN, e2.EmployeeSIN