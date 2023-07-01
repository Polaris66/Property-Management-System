-- NOW BEFORE YOU CONNECT TO ANY USER OR CREATE IT FIRST START THE LISTENER FROM YOUR TERMINAL AS ADMINISTRATOR BY TYPING
lsnrctl start;


-- Connecting to sysdba
connect sys/manager as sysdba;

--YOU HAVE TO CONNECT TO PLUGGABLE DATABASE  BEFORE CREATING OR CONNECTION TO ANY USER
connect sys/oracle@172.16.137.214:1521/XEPDB1 as sysdba;    --connect sys/your_password@localhost_OR_your_device_hostname_OR_potnumber:DEFAULT_PORT/XEPDB1 as sysdba;


--Creating and Connecting to our project dba
create user ishan identified by ishan123 quota unlimited on users;
connect ishan/ishan123@172.16.137.214:1521/XEPDB1;


--Creating and Connecting to our project managers
create user managers identified by managers123 quota unlimited on users;
connect managers/managers123@172.16.137.214:1521/XEPDB1;


--Creating and Connecting to owner
create user owner identified by owner123 quota unlimited on users;
connect owner/owner123@172.16.137.214:1521/XEPDB1;


--Creating and Connecting to tenant
create user tenant identified by tenant123 quota unlimited on users;
connect tenant/tenant123@172.16.137.214:1521/XEPDB1;


--NOTE THE CONNECTS WON"T WORK UNTIL YOU HAVE PROVIDED GRANT SESSION AND OTHER PRIVILEDGES TO THEM FIRST SO DON'T RUN THIS @file.sql on terminal
