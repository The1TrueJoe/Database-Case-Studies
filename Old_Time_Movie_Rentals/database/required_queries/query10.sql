-- qeury 10: List all managers and the employees they manage. Sort by ManagerSIN, then by EmployeeSIN
use CASE03_OTMR;
select e.EmployeeName as Manager, e2.EmployeeName as Employee
from EMPLOYEE e, EMPLOYEE e2
where e.ManagerSIN = e.EmployeeSIN
order by e.ManagerSIN, e2.EmployeeSIN


