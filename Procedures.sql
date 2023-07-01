--REMEMBER TO WRITE SET SERVEROUTPUT ON;



CREATE OR REPLACE PROCEDURE InsertPropertyRecord (
    u_property_id in varchar2,
    u_total_area in int,
    u_plinth_area in int,
    u_rent in int,
    u_address in varchar,
    u_availability in int,
    u_locality in varchar,
    u_start_date in date,
    u_end_date in date,
    u_num_floors in int,
    u_construct_year in int,
    u_owner_id in varchar2,
    u_tenant_id in varchar2,
    u_rent_agency in varchar,
    u_rent_start in date,
    u_rent_end in date
  ) AS BEGIN
INSERT INTO property VALUES (  u_property_id,u_total_area,u_plinth_area,u_rent,u_address,u_availability,u_locality,u_start_date ,u_end_date ,u_num_floors ,u_construct_year ,u_owner_id ,u_tenant_id ,u_rent_agency ,u_rent_start ,u_rent_end );
    --Create a user with given password and give viewing access
    DBMS_OUTPUT.PUT_LINE('New user record created successfully.');
END;
/





CREATE OR REPLACE PROCEDURE GetPropertyRecords (
  OwnerId IN VARCHAR
) 
AS
  CURSOR cur_R IS
  SELECT * FROM PROPERTY
  WHERE owner_id=OwnerId;
BEGIN 
  FOR props IN cur_R
  LOOP
    DBMS_OUTPUT.PUT_LINE('Property ID: ' || props.property_id || ', Property Area: ' || props.total_area || ', Property plinthArea: ' || props.plinth_area || ', Rent: ' || props.rent || ', Address: ' || props.address || ', Availability: ' || props.availability||', locality: ' || props.locality||', Property startdate: ' || props.start_date || ', Property enddate: ' || props.end_date || ', Property floors: ' || props.num_floors || ', Property year: ' || props.construct_year || ', Property owner: ' || props.owner_id|| ', Property tenant: ' || props.tenant_id|| ', Property agency: ' || props.rent_agency|| ', Property rent startdate: ' || props.rent_start|| ', Property rent enddate: ' || props.rent_end);
  END LOOP;
END;
/




CREATE OR REPLACE PROCEDURE GetTenantDetails (
  PropertyId IN VARCHAR
) 
AS
  CURSOR cur_R IS
  SELECT * from person where aadhar in (select tenant_id FROM property
  WHERE property_id=PropertyId);
BEGIN 
  FOR props IN cur_R
  LOOP
    DBMS_OUTPUT.PUT_LINE(    'tenant ID: ' || props.aadhar || ', tenant name: ' || props.name || ', tenant age: ' || props.age || ', door#: ' || props.door# || ', street: ' || props.street || ', city: ' || props.city||', state: ' || props.state||', Pincode: ' || props.pincode || ', username: ' || props.username || ', password: ' || props.password || ',type: ' || props.type
);
  END LOOP;
END;
/



CREATE OR REPLACE PROCEDURE CreateNewUser (
    u_aadhar IN VARCHAR2,
    u_name IN VARCHAR2,
    u_age IN INT,
    u_door # IN INT,
    u_street in varchar,
    u_city in varchar,
    u_state in varchar,
    u_pincode in int,
    u_username in varchar,
    U_password IN VARCHAR,
    U_type IN VARCHAR2
  ) AS BEGIN
INSERT INTO person (
    aadhar,
    name,
    age,
    door #,street,city,state,pincode,username, password, type) VALUES (u_aadhar, u_name, u_age,u_door#,u_street,u_city,u_state,u_pincode,u_username, u_password, u_type);
    DBMS_OUTPUT.PUT_LINE('New user record created successfully.');
END;
/ 



CREATE OR REPLACE PROCEDURE CreateNewUserPhone (
    u_aadhar IN VARCHAR2,
    u_phone IN INT
  ) AS BEGIN
INSERT INTO user_phone VALUES (u_aadhar, u_phone);
    DBMS_OUTPUT.PUT_LINE('New user phone record created successfully.');
END;
/ 





CREATE OR REPLACE PROCEDURE SearchPropertyForRent (
  CityorLocality IN VARCHAR
) 
AS
  CURSOR cur_R IS
  SELECT * FROM PROPERTY
  WHERE locality = CityorLocality and availability=1;
BEGIN 
  FOR props IN cur_R
  LOOP
    DBMS_OUTPUT.PUT_LINE(    'Property ID: ' || props.property_id || ', Property Area: ' || props.total_area || ', Property plinthArea: ' || props.plinth_area || ', Rent: ' || props.rent || ', Address: ' || props.address || ', Availability: ' || props.availability||', locality: ' || props.locality||', Property startdate: ' || props.start_date || ', Property enddate: ' || props.end_date || ', Property floors: ' || props.num_floors || ', Property year: ' || props.construct_year || ', Property owner: ' || props.owner_id|| ', Property tenant: ' || props.tenant_id|| ', Property agency: ' || props.rent_agency|| ', Property rent startdate: ' || props.rent_start|| ', Property rent enddate: ' || props.rent_end
);
  END LOOP;
END;
/



CREATE OR REPLACE PROCEDURE GetRentHistory (
  property_id IN VARCHAR
) 
AS
  CURSOR cur_L IS
  SELECT tenant_id,prop_id,start_date, end_date, rent_agency,percent_hike FROM prev_rented
  WHERE prop_id = property_id;
BEGIN 
  FOR L_IDX IN cur_L
  LOOP
    DBMS_OUTPUT.PUT_LINE(property_id||' '||L_IDX.start_date || ' ' || L_IDX.end_date||' '||L_IDX.tenant_id||' '||L_IDX.rent_agency||' '||L_IDX.percent_hike);
  END LOOP;
END;
/