CREATE DATABASE DW_Appointments;

\c dw_appointments;


CREATE TABLE dim_patient (
    PatientID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Gender VARCHAR(1),
    BirthYear INT,
    City VARCHAR(50)
);




CREATE TABLE dim_physician (
    PhysicianID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Specialization VARCHAR(100)
);

CREATE TABLE dim_date (
    DateID INT PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);


CREATE TABLE dim_status (
    StatusID INT PRIMARY KEY AUTO_INCREMENT,
    StatusName VARCHAR(20) UNIQUE
);

CREATE TABLE fact_appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    PhysicianID INT,
    DateID INT,
    StatusID INT,

    FOREIGN KEY (PatientID) REFERENCES dim_patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES dim_physician(PhysicianID),
    FOREIGN KEY (DateID) REFERENCES dim_date(DateID),
    FOREIGN KEY (StatusID) REFERENCES dim_status(StatusID)
);
