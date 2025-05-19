CREATE DATABASE dw_prescriptions;
\c dw_prescriptions;

CREATE TABLE IF NOT EXISTS dim_patient (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender CHAR(1),
    birth_year INT,
    city VARCHAR(100)
);




CREATE TABLE IF NOT EXISTS dim_physician (
    physician_id INT PRIMARY KEY,
    full_name VARCHAR(150),
    specialization VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dim_medication (
    medication_id INT PRIMARY KEY,
    medication_name VARCHAR(150),
    dosage VARCHAR(100),
    route VARCHAR(20),
    frequency VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    quarter INT,
    year INT
);


CREATE TABLE IF NOT EXISTS fact_prescriptions (
    prescription_id INT PRIMARY KEY,
    patient_id INT REFERENCES dim_patient(patient_id),
    physician_id INT REFERENCES dim_physician(physician_id),
    medication_id INT REFERENCES dim_medication(medication_id),
    prescription_date_id INT REFERENCES dim_date(date_id),
    dosage_instructions TEXT
);
