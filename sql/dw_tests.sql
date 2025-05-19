CREATE DATABASE dw_tests;
\c dw_tests;


CREATE TABLE IF NOT EXISTS dim_patient (
    patient_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    gender CHAR(1),
    birth_year INT,
    city VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dim_test (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(150),
    description TEXT
);

CREATE TABLE IF NOT EXISTS dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    day INT,
    month INT,
    quarter INT,
    year INT
);

CREATE TABLE IF NOT EXISTS fact_test_results (
    result_id INT PRIMARY KEY,
    patient_id INT REFERENCES dim_patient(patient_id),
    test_id INT REFERENCES dim_test(test_id),
    result_date_id INT REFERENCES dim_date(date_id),
    result_details TEXT
);
