create table EMPLOYEE
(
    EmployeeSIN         char(30) not null,
    ManagerSIN          char(30) not null,
    EmployeeName        char(30) not null,
    EmployeeStreet      char(30) not null,
    EmployeeCity        char(30) not null,
    EmployeeState       char(30) not null,
    EmployeePhoneNumber char(30) not null,
    EmployeeHireDate    date     not null,

    PRIMARY KEY (EmployeeSIN),
    FOREIGN KEY (ManagerSIN) REFERENCES EMPLOYEE(EmployeeSIN)
)
    collate = utf8_unicode_ci;

