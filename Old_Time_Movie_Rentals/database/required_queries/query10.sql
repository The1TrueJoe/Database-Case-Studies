/*
List all the managers and the names of the employees they manage. Sort by manager ID then by employee ID
*/

/* Specify the schema to user */
use CASE03_OTMR;

select e.EmployeeName as Manager, e2.EmployeeName as Employee
from EMPLOYEE e, EMPLOYEE e2
where e.ManagerSIN = e.EmployeeSIN
order by e.ManagerSIN, e2.EmployeeSIN


