DELIMITER $$
Create procedure xyz_123(in eid int)
proc: BEGIN
	Declare ename varchar(200);
    declare esalary float;
    declare emp_count int;
    
    SELECT COUNT(*) into emp_count from xyz_123
    where Emp_id=eid;
    
    if emp_count= 0 then
    Select 'Error: Employee ID is not found in MY database CGC' as Message;
    Leave proc;
    End if;
    
    Select Empname,salary into ename,esalary from xyz_123
    where Emp_id =eid;
    
    Select Empname as Name, salary as Salary;
    End $$