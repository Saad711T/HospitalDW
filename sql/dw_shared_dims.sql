-- Shared Dimensions for all DWs
-- Use this if you plan to unify dims across DWs into one database

-- Optional: CREATE DATABASE dw_shared_dims;
-- \c dw_shared_dims;

-- Dimension: Date
CREATE TABLE IF NOT EXISTS dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    quarter INT,
    year INT
);

-- Dimension: Patient
CREATE TABLE IF NOT EXISTS dim_patient (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender CHAR(1),
    birth_year INT,
    city VARCHAR(100)
);


-- Dimension: Physician
CREATE TABLE IF NOT EXISTS dim_physician (
    physician_id INT PRIMARY KEY,
    full_name VARCHAR(150),
    specialization VARCHAR(100)
);
