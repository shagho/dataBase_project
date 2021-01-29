-- create DATABASE [doctor_patient]

use [doctor_patient]
GO

drop table doctor;
drop table patient;
drop table medicine;
drop table prescription_medicine;
drop table prescription;

create table doctor
(
    ssn int,
    firstName  varchar(30),
    lastName   varchar(30),
    specilty   varchar(35),
    yearOfExprience  int,
    phoneNum  varchar(10),
    primary key(ssn)
); 

create table patient
(
    ssn        int,
    firstName  varchar(30),
    lastName   varchar(30),
    addr       varchar(70),
    dob        date,
    pd_ssn     int,
    primary key(ssn)
);

create table medicine
(
    TradeName   varchar(50),
    unitPrice   int,
    genericFlag varchar(6),
    PRIMARY KEY(TradeName)
);

create table prescription
(
    id  int,
    Datee  date,
    doctor_ssn  int,
    patient_ssn int,
    PRIMARY KEY(id)
);

create table prescription_medicine
(
    id          int,
    TradeName   varchar(50),
    numOfUnit   int,
    PRIMARY KEY(id, TradeName),
    foreign key (id) references prescription(id) 
    on delete cascade
);