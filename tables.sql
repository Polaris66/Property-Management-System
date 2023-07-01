--REMEMBER TO SET LINESIZE 20000 for better viewing of data in tables




drop table prev_rented;
drop table commercial_property;
drop table residential_property;
drop table property;
drop table user_phone;
drop table person;

-- user table with one PK and a UK.
create table person(
    aadhar varchar2(200) primary key,
    name varchar(150),
    age int,
    door# int,
    street varchar(200),
    city varchar(150),
    state varchar(100),
    pincode int,
    username varchar(100),
    password varchar(150) not null,
    type varchar(100),
    constraint door#_uk unique(door#),
    constraint username_uk unique(username)
);

-- phone details table with FK
create table user_phone(
    id varchar2(200),
    phone int,
    primary key (id, phone),
    foreign key (id) references person(aadhar)
);

-- property table
create table property(
    property_id varchar2(200) primary key,
    total_area int,
    plinth_area int,
    rent int,
    address varchar(200),
    availability int, -- 1 for true and 0 for false
    locality varchar(100),
    start_date date,
    end_date date,
    num_floors int,
    construct_year int,
    owner_id varchar2(200),
    tenant_id varchar2(200),
    rent_agency varchar(100),
    rent_start date,
    rent_end date,
    foreign key (owner_id) references person(aadhar),
    foreign key (tenant_id) references person(aadhar)
);

-- residential property table with FK
create table residential_property(
    residential_id varchar2(200) primary key,
    num_bedrooms int,
    type varchar(100),
    foreign key (residential_id) references property(property_id)
);

-- commercial property table with FK
create table commercial_property(
    commercial_id varchar2(020) primary key,
    type varchar(100),
    structure varchar(150),
    foreign key (commercial_id) references property(property_id)
);

-- previously rented table with multiple keys
create table prev_rented(
    tenant_id varchar2(200),
    prop_id varchar2(200),
    rent_agency varchar(100),
    start_date date,
    end_date date,
    percent_hike int,
    primary key (tenant_id, prop_id, start_date),
    foreign key (prop_id) references property(property_id),
    foreign key (tenant_id) references person(aadhar)
);







