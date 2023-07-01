--ALL OF THESE PERMISIIONS HAVE BEEN GRANTED WHILE BNEING CONNECTED TO SYS AS SYSDBA


--granting permissions to our project dba
grant create session to ishan with admin option;
grant create procedure to ishan;
grant create view to ishan;
grant create user to ishan;


--granting permissions to our project managers
grant create session to managers;
grant create procedure to managers;
grant create view to managers;
grant select on ishan.person to managers;
grant select on ishan.user_phone to managers;
grant select,update,delete,insert on ishan.property to managers;
grant select,update,delete,insert on ishan.residential_property to managers;
grant select,update,delete,insert on ishan.commercial_property to managers;
grant select,update,delete,insert on ishan.prev_rented to managers;
grant execute on ishan.GetPropertyRecords to managers;
grant execute on ishan.GetTenantDetails to managers;
grant execute on ishan.SearchPropertyForRent to managers;
grant execute on ishan.InsertPropertyRecord to managers;
grant execute on ishan.GetRentHistory to managers;



--granting permissions to owner
grant create session to owner;
grant create procedure to owner;
grant create view to owner;
grant select,update,delete,insert on ishan.property to owner;
grant select,update,delete,insert on ishan.residential_property to owner;
grant select,update,delete,insert on ishan.commercial_property to owner;
grant select on ishan.prev_rented to owner;
grant execute on ishan.GetPropertyRecords to owner;
grant execute on ishan.InsertPropertyRecord to owner;

--If you want owner to be able to only access and modify his own property then
CREATE view owner_orders AS
select * from property where owner_id='owner@123';
grant select,insert,delete,update on owner_orders to owner;
CREATE view owner_orders2 AS
select * from residential_property where residential_id=property_id and owner_id='owner@123';
grant select,insert,delete,update on owner_orders2 to owner;
CREATE view owner_orders3 AS
select * from commercial_property where commercial_id=property_id and owner_id='owner@123';
grant select,insert,delete,update on owner_orders3 to owner;


--granting permissions to tenant
grant create session to tenant;
grant select on ishan.property to tenant;
grant select on ishan.residential_property to tenant;
grant select on ishan.commercial_property to tenant;
grant select on ishan.prev_rented to tenant;
grant execute on ishan.SearchPropertyForRent to tenant;


