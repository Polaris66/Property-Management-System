-- person table
INSERT INTO person (aadhar, name, age, door#, street, city, state, pincode, username, password, type)
VALUES ('123456789012', 'John Doe', 35, 10, 'Main St', 'Mumbai', 'MH', 400001, 'johndoe', 'password', 'both');

INSERT INTO person (aadhar, name, age, door#, street, city, state, pincode, username, password, type)
VALUES ('234567890123', 'Jane Smith', 28, 20, '2nd Cross', 'Bengaluru', 'KA', 560001, 'janesmith', 'password', 'tenant');

INSERT INTO person (aadhar, name, age, door#, street, city, state, pincode, username, password, type)
VALUES ('345678901234', 'Bob Patel', 42, 30, 'MG Road', 'Delhi', 'DL', 110001, 'bobpatel', 'password', 'owner');

INSERT INTO person (aadhar, name, age, door#, street, city, state, pincode, username, password, type)
VALUES ('456789012345', 'Amy Gupta', 50, 40, 'Park Lane', 'Kolkata', 'WB', 700001, 'amygupta', 'password', 'manager');

INSERT INTO person (aadhar, name, age, door#, street, city, state, pincode, username, password, type)
VALUES ('567890123456', 'Tim Lee', 38, 50, 'Gandhi Rd', 'Chennai', 'TN', 600001, 'timlee', 'password', 'dba');











-- property table
INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES(101, 1000, 800, 20000, '123 Main St, Bangalore', 1, 'Koramangala', DATE'2023-05-01', DATE'2023-12-31', 2, 2010, 123456789012, 234567890123, 'ABC Rent',DATE '2023-05-01', DATE'2023-12-31');
 INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES (102, 2000, 1500, 35000, '456 XYZ Rd, Mumbai', 1, 'Powai', DATE'2023-06-01', DATE'2024-05-31', 3, 2015, 234567890123, 345678901234, 'XYZ Realty', DATE'2023-06-01', DATE'2024-05-31');
  INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES(103, 1500, 1200, 28000, '789 ABC St, Delhi', 0, 'Connaught',DATE '2023-05-01', DATE'2024-04-30', 1, 2018, 345678901234, NULL, NULL, NULL,NULL);
  INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES(104, 3000, 2000, 50000, '987 PQR Ave, Hyderabad', 1, 'HITEC City', DATE'2023-07-01', DATE'2024-06-30', 4, 2012, 456789012345, NULL, NULL, NULL,NULL);
  INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES(105, 2500, 1800, 40000, '654 QWE St, Chennai', 1, 'Anna Nagar', DATE'2023-08-01', DATE'2023-12-31', 2, 2016, 567890123456, 123456789012, 'DEF Realtors', DATE'2023-08-01', DATE'2023-12-31');
  INSERT INTO property (property_id, total_area, plinth_area, rent, address, availability, locality, start_date, end_date, num_floors, construct_year, owner_id, tenant_id, rent_agency, rent_start, rent_end)
VALUES(106, 3500, 2500, 60000, '321 ASD Rd, Bangalore', 1, 'Whitefield', DATE'2023-06-01', DATE'2023-12-31', 3, 2010, 234567890123, 345678901234, 'GHI Rentals',DATE '2023-06-01', DATE'2023-12-31');


-- prev_rented table
INSERT INTO prev_rented (tenant_id, prop_id, rent_agency, start_date, end_date, percent_hike)
VALUES ('123456789012', '101', 'ABC Rent', TO_DATE('2022-01-01', 'YYYY-MM-DD'), TO_DATE('2022-12-31', 'YYYY-MM-DD'), 5);

INSERT INTO prev_rented (tenant_id, prop_id, rent_agency, start_date, end_date, percent_hike)
VALUES ('234567890123', '102', 'XYZ Realty', TO_DATE('2021-06-01', 'YYYY-MM-DD'), TO_DATE('2022-05-31', 'YYYY-MM-DD'), 10);

INSERT INTO prev_rented (tenant_id, prop_id, rent_agency, start_date, end_date, percent_hike)
VALUES ('345678901234', '105', 'DEF Realtors', TO_DATE('2021-08-01', 'YYYY-MM-DD'), TO_DATE('2022-07-31', 'YYYY-MM-DD'), 7);

-- residential_property table
INSERT INTO residential_property 
VALUES ('101', 2, 'apartment');

INSERT INTO residential_property 
VALUES ('103', 3, 'house');

INSERT INTO residential_property 
VALUES ('105', 1, 'studio');

-- commercial_property table
INSERT INTO commercial_property 
VALUES ('102', 'office', 'high-rise');

INSERT INTO commercial_property 
VALUES ('106', 'store', 'strip mall');

INSERT INTO commercial_property 
VALUES ('104', 'restaurant', 'standalone');

-- user_phone table
INSERT INTO user_phone 
VALUES ('123456789012', 9876543210);

INSERT INTO user_phone 
VALUES ('234567890123', 8765432109);

INSERT INTO user_phone 
VALUES ('345678901234', 7654321098);

INSERT INTO user_phone 
VALUES ('456789012345', 6543210987);

INSERT INTO user_phone 
VALUES ('567890123456', 5432109876);



