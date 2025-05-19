CREATE DATABASE DW_Admissions;
USE DW_Admissions;

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

CREATE TABLE dim_diagnosis (
    DiagnosisID INT PRIMARY KEY AUTO_INCREMENT,
    DiagnosisName VARCHAR(100) UNIQUE
);

CREATE TABLE dim_diagnosis (
    DiagnosisID INT PRIMARY KEY AUTO_INCREMENT,
    DiagnosisName VARCHAR(100) UNIQUE
);



CREATE TABLE fact_admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    PhysicianID INT,
    DiagnosisID INT,
    AdmissionDateID INT,
    DischargeDateID INT,
    RoomNumber INT,
    StayLength INT,
    
    FOREIGN KEY (PatientID) REFERENCES dim_patient(PatientID),
    FOREIGN KEY (PhysicianID) REFERENCES dim_physician(PhysicianID),
    FOREIGN KEY (DiagnosisID) REFERENCES dim_diagnosis(DiagnosisID),
    FOREIGN KEY (AdmissionDateID) REFERENCES dim_date(DateID),
    FOREIGN KEY (DischargeDateID) REFERENCES dim_date(DateID)
);
