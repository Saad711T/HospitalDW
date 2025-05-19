CREATE DATABASE sourcedb;
USE sourcedb;

CREATE TABLE Patients(
PatientID INT PRIMARY KEY ,
FirstName VARCHAR (20)  ,
LastName VARCHAR (20) ,
DateOfBirth DATE ,
Gender VARCHAR (1) ,
ContactNumber INT (10) ,
EmergencyContactNumber INT (10) ,
Address VARCHAR (30) ,
InsurancePolicyNumber VARCHAR (10) ,
FOREIGN KEY (InsurancePolicyNumber) REFERENCES Insurance(PolicyNumber)
);

INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, ContactNumber, EmergencyContactNumber, Address, InsurancePolicyNumber) VALUES
(1, 'Ahmed', 'Ali', '1985-06-15', 'M', '0567891234', '0557891234', 'Riyadh, KSA', 'POL1000'),
(2, 'Fatima', 'Khalid', '1992-03-10', 'F', '0561234567', '0551234567', 'Jeddah, KSA', 'POL1005'),
(3, 'Omar', 'Yousef', '1978-11-22', 'M', '0564567890', '0554567890', 'Dammam, KSA', 'POL1003'),
(4, 'Nora', 'Salem', '1989-08-14', 'F', '0561112223', '0553334445', 'Mecca, KSA', 'POL1004'),
(5, 'Hassan', 'Yazid', '2001-02-19', 'M', '0567778889', '0556665554', 'Abha, KSA', 'POL1004'),
(6, 'Amal', 'Saad', '1990-07-21', 'F', '0565556667', '0559998881', 'Hail, KSA', 'POL1002'),
(7, 'Fahad', 'Saad', '1992-03-07', 'M', '0565556667', '0555555555', 'Hail, KSA', 'POL1003'),
(8, 'Yasser', 'Abdullah', '2002-09-18', 'M', '0536156522', '0564591292', 'Taif, KSA', 'POL1004'),
(9, 'Saad', 'Khalid', '2010-04-28', 'M', '0544485555', '0544485555', 'Riyadh, KSA', 'POL1000'),
(10, 'Sara', 'Omar', '1999-12-24', 'F', '0592823432', '0592823432', 'Riyadh, KSA', 'POL1001'),
(11, 'Badr', 'Saad', '1991-01-31', 'M', '0565556667', '0559998881', 'Hail, KSA', 'POL1000'),
(12, 'Ali', 'Hassan', '1980-05-25', 'M', '0511113007', '0511113007', 'Dammam, KSA', 'POL1002'),
(13, 'Mona', 'Yousef', '1995-03-11', 'F', '0578889990', '0578889990', 'Jazan, KSA', 'POL1005'),
(14, 'Faisal', 'Ibrahim', '1983-07-15', 'M', '0523456789', '0523456789', 'Tabuk, KSA', 'POL1001'),
(15, 'Huda', 'Salem', '1996-09-23', 'F', '0569876543', '0569876543', 'Yanbu, KSA', 'POL1002'),
(16, 'Majed', 'Nasser', '2005-02-10', 'M', '0581234567', '0581234567', 'Medina, KSA', 'POL1003'),
(17, 'Reem', 'Ali', '1988-08-30', 'F', '0501239876', '0501239876', 'Riyadh, KSA', 'POL1001'),
(18, 'Yahya', 'Hassan', '1974-11-05', 'M', '0536549871', '0536549871', 'Dhahran, KSA', 'POL1005'),
(19, 'Laila', 'Faisal', '1993-06-18', 'F', '0556789101', '0556789101', 'Abha, KSA', 'POL1004'),
(20, 'Talal', 'Mansour', '1986-12-08', 'M', '0569988771', '0569988771', 'Riyadh, KSA', 'POL1000'),
(21, 'Nasser', 'Salman', '1998-01-27', 'M', '0578899001', '0578899001', 'Qassim, KSA', 'POL1001'),
(22, 'Manal', 'Jaber', '1994-04-13', 'F', '0512233445', '0512233445', 'Riyadh, KSA', 'POL1002'),
(23, 'Hani', 'Badr', '1990-10-20', 'M', '0545566778', '0545566778', 'Jeddah, KSA', 'POL1000'),
(24, 'Rana', 'Mahmoud', '2000-09-15', 'F', '0523344556', '0523344556', 'Medina, KSA', 'POL1004'),
(25, 'Fahd', 'Othman', '1992-03-09', 'M', '0589987766', '0589987766', 'Dammam, KSA', 'POL1001'),
(26, 'Nawal', 'Zaid', '1987-06-01', 'F', '0591122334', '0591122334', 'Riyadh, KSA', 'POL1002'),
(27, 'Youssef', 'Salem', '1995-08-11', 'M', '0536677889', '0536677889', 'Hail, KSA', 'POL1002'),
(28, 'Hana', 'Ahmed', '1999-02-20', 'F', '0549988776', '0549988776', 'Jazan, KSA', 'POL1003'),
(29, 'Sami', 'Ibrahim', '1981-05-03', 'M', '0510098765', '0510098765', 'Tabuk, KSA', 'POL1005'),
(30, 'Nada', 'Hassan', '1989-11-28', 'F', '0566778899', '0566778899', 'Riyadh, KSA', 'POL1000'),
(31, 'Fadi', 'Khaled', '1997-04-12', 'M', '0523344455', '0523344455', 'Medina, KSA', 'POL1004'),
(32, 'Amani', 'Salem', '1984-09-06', 'F', '0586677889', '0586677889', 'Dammam, KSA', 'POL1005'),
(33, 'Tariq', 'Saad', '1990-07-14', 'M', '0599988770', '0599988770', 'Jeddah, KSA', 'POL1001'),
(34, 'Riyad', 'Mousa', '1993-02-28', 'M', '0501122334', '0501122334', 'Yanbu, KSA', 'POL1000'),
(35, 'Layla', 'Fahad', '2002-05-17', 'F', '0565566778', '0565566778', 'Riyadh, KSA', 'POL1002'),
(36, 'Ali', 'Nasser', '1979-10-25', 'M', '0519988776', '0519988776', 'Qassim, KSA', 'POL1001'),
(37, 'Mariam', 'Faisal', '1991-12-19', 'F', '0532233445', '0532233445', 'Jazan, KSA', 'POL1004'),
(38, 'Adel', 'Mohammed', '1986-07-07', 'M', '0544455667', '0544455667', 'Riyadh, KSA', 'POL1000'),
(39, 'Rami', 'Hassan', '1982-09-25', 'M', '0577788899', '0577788899', 'Tabuk, KSA', 'POL1002'),
(40, 'Heba', 'Khalid', '1994-03-08', 'F', '0593344556', '0593344556', 'Mecca, KSA', 'POL1003');


CREATE TABLE Admissions(
AdmissionID INT (10) PRIMARY KEY ,
PatientID INT (10) NOT NULL,
AdmissionDate DATE ,
DischargeDate DATE ,
AdmissionDiagnosis VARCHAR (50) ,
ReferringPhysician VARCHAR (20) NOT NULL,
RoomNumber INT (4),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (ReferringPhysician) REFERENCES Physicians(PhysicianID)
);

INSERT INTO Admissions (AdmissionID, PatientID, AdmissionDate, DischargeDate, AdmissionDiagnosis, ReferringPhysician, RoomNumber) VALUES
(1, 1, '2024-12-01', '2024-12-10', 'Heart Attack', 1, 101),
(2, 2, '2024-12-02', '2024-12-12', 'Asthma', 2, 202),
(3, 3, '2024-12-03', NULL, 'Diabetes', 3, 303),
(4, 4, '2024-12-05', '2024-12-15', 'Skin Rash', 4, 104),
(5, 5, '2024-12-07', NULL, 'Pneumonia', 5, 305),
(6, 6, '2024-12-09', '2024-12-19', 'Fractured Arm', 6, 106),
(7, 7, '2024-12-10', NULL, 'Kidney Stones', 7, 207),
(8, 8, '2024-12-11', '2024-12-20', 'Appendicitis', 8, 308),
(9, 9, '2024-12-12', '2024-12-17', 'Migraine', 9, 109),
(10, 10, '2024-12-13', NULL, 'Hypertension', 10, 210),
(11, 11, '2024-12-14', '2024-12-21', 'Back Pain', 11, 311),
(12, 12, '2024-12-15', NULL, 'Gastroenteritis', 12, 112),
(13, 13, '2024-12-16', '2024-12-22', 'Fractured Leg', 1, 313),
(14, 14, '2024-12-17', '2024-12-24', 'Liver Cirrhosis', 2, 114),
(15, 15, '2024-12-18', NULL, 'COVID-19', 3, 215),
(16, 16, '2024-12-19', '2024-12-26', 'Asthma', 4, 316),
(17, 17, '2024-12-20', '2024-12-27', 'Fractured Arm', 5, 117),
(18, 18, '2024-12-21', NULL, 'Heart Attack', 6, 218),
(19, 19, '2024-12-22', '2024-12-28', 'Kidney Stones', 7, 319),
(20, 20, '2024-12-23', NULL, 'Appendicitis', 8, 120),
(21, 21, '2024-12-24', '2024-12-29', 'Hypertension', 9, 321),
(22, 22, '2024-12-25', '2024-12-30', 'Back Pain', 10, 122),
(23, 23, '2024-12-26', NULL, 'Diabetes', 11, 323),
(24, 24, '2024-12-27', '2024-12-31', 'Skin Rash', 12, 124),
(25, 25, '2024-12-28', NULL, 'Fractured Arm', 1, 325),
(26, 26, '2024-12-29', '2024-12-30', 'Gastroenteritis', 2, 126),
(27, 27, '2024-12-30', NULL, 'Migraine', 3, 327),
(28, 28, '2024-12-31', '2025-01-02', 'Kidney Stones', 4, 128),
(29, 29, '2025-01-01', '2025-01-03', 'Asthma', 5, 329),
(30, 30, '2025-01-02', '2025-01-04', 'Fractured Leg', 6, 130),
(31, 31, '2025-01-03', NULL, 'Hypertension', 7, 331),
(32, 32, '2025-01-04', '2025-01-06', 'Appendicitis', 8, 132),
(33, 33, '2025-01-05', '2025-01-07', 'Heart Attack', 9, 333),
(34, 34, '2025-01-06', NULL, 'Back Pain', 10, 134),
(35, 35, '2025-01-07', '2025-01-09', 'Diabetes', 11, 335),
(36, 36, '2025-01-08', '2025-01-10', 'Skin Rash', 12, 136),
(37, 37, '2025-01-09', NULL, 'Asthma', 1, 337),
(38, 38, '2025-01-10', '2025-01-12', 'Migraine', 2, 138),
(39, 39, '2025-01-11', '2025-01-13', 'Kidney Stones', 3, 339),
(40, 40, '2025-01-12', NULL, 'Fractured Leg', 4, 140);


CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
PatientID INT NOT NULL,
PhysicianID INT NOT NULL,
AppointmentDate DATE NOT NULL,
Status ENUM('Confirmed', 'Canceled', 'Rescheduled', 'Pending') NOT NULL,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID)
);

INSERT INTO Appointments (AppointmentID, PatientID, PhysicianID, AppointmentDate, Status) VALUES
(1, 1, 1, '2024-12-05', 'Confirmed'),
(2, 2, 2, '2024-12-06', 'Pending'),
(3, 3, 3, '2024-12-07', 'Rescheduled'),
(4, 4, 4, '2024-12-08', 'Confirmed'),
(5, 5, 5, '2024-12-09', 'Canceled'),
(6, 6, 1, '2024-12-10', 'Confirmed'),
(7, 7, 2, '2024-12-11', 'Pending'),
(8, 8, 3, '2024-12-12', 'Rescheduled'),
(9, 9, 4, '2024-12-13', 'Confirmed'),
(10, 10, 5, '2024-12-14', 'Canceled'),
(11, 11, 1, '2024-12-15', 'Confirmed'),
(12, 12, 2, '2024-12-16', 'Pending'),
(13, 13, 3, '2024-12-17', 'Rescheduled'),
(14, 14, 4, '2024-12-18', 'Confirmed'),
(15, 15, 5, '2024-12-19', 'Canceled'),
(16, 16, 1, '2024-12-20', 'Confirmed'),
(17, 17, 2, '2024-12-21', 'Pending'),
(18, 18, 3, '2024-12-22', 'Rescheduled'),
(19, 19, 4, '2024-12-23', 'Confirmed'),
(20, 20, 5, '2024-12-24', 'Canceled'),
(21, 21, 1, '2024-12-25', 'Confirmed'),
(22, 22, 2, '2024-12-26', 'Pending'),
(23, 23, 3, '2024-12-27', 'Rescheduled'),
(24, 24, 4, '2024-12-28', 'Confirmed'),
(25, 25, 5, '2024-12-29', 'Canceled'),
(26, 26, 1, '2024-12-30', 'Confirmed'),
(27, 27, 2, '2024-12-31', 'Pending'),
(28, 28, 3, '2025-01-01', 'Rescheduled'),
(29, 29, 4, '2025-01-02', 'Confirmed'),
(30, 30, 5, '2025-01-03', 'Canceled'),
(31, 31, 1, '2025-01-04', 'Confirmed'),
(32, 32, 2, '2025-01-05', 'Pending'),
(33, 33, 3, '2025-01-06', 'Rescheduled'),
(34, 34, 4, '2025-01-07', 'Confirmed'),
(35, 35, 5, '2025-01-08', 'Canceled'),
(36, 36, 1, '2025-01-09', 'Confirmed'),
(37, 37, 2, '2025-01-10', 'Pending'),
(38, 38, 3, '2025-01-1q' ,'Pending'),
(39, 39, 9, '2025-01-12', 'Rescheduled'),
(40, 40, 10, '2025-01-13', 'Confirmed');


CREATE TABLE Physicians (
PhysicianID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
Specialization VARCHAR(150),
ContactNumber VARCHAR(15),
Email VARCHAR(150)
);

INSERT INTO Physicians (PhysicianID, FirstName, LastName, Specialization, ContactNumber, Email) VALUES
(1, 'Saeed', 'Hassan', 'Cardiologist', '0557896543', 'saeed.hassan@example.com'),
(2, 'Leila', 'Ahmed', 'Pediatrician', '0553217890', 'leila.ahmed@example.com'),
(3, 'Mohammed', 'Saleh', 'Orthopedic', '0559876543', 'mohammed.saleh@example.com'),
(4, 'Hala', 'Mousa', 'Dermatologist', '0551122334', 'hala.mousa@example.com'),
(5, 'Ali', 'Tariq', 'Neurologist', '0556677889', 'ali.tariq@example.com'),
(6, 'Yasser', 'Kamal', 'General Practitioner', '0551237890', 'yasser.kamal@example.com'),
(7, 'Mona', 'Hussein', 'Gynecologist', '0556541234', 'mona.hussein@example.com'),
(8, 'Hassan', 'Ali', 'Pulmonologist', '0553216549', 'hassan.ali@example.com'),
(9, 'Amal', 'Salem', 'Endocrinologist', '0559871234', 'amal.salem@example.com'),
(10, 'Nasser', 'Othman', 'Cardiologist', '0553456789', 'nasser.othman@example.com'),
(11, 'Khaled', 'Hussein', 'Ophthalmologist', '0557893210', 'khaled.hussein@example.com'),
(12, 'Rania', 'Tarek', 'Dermatologist', '0551234567', 'rania.tarek@example.com'),
(13, 'Omar', 'Salman', 'Psychiatrist', '0556547890', 'omar.salman@example.com'),
(14, 'Layla', 'Mahmoud', 'Neurologist', '0559876543', 'layla.mahmoud@example.com'),
(15, 'Hadi', 'Youssef', 'Pediatrician', '0551237891', 'hadi.youssef@example.com'),
(16, 'Tariq', 'Ibrahim', 'Orthopedic', '0556541235', 'tariq.ibrahim@example.com'),
(17, 'Fatima', 'Khalil', 'General Practitioner', '0553216548', 'fatima.khalil@example.com'),
(18, 'Badr', 'Saad', 'Pulmonologist', '0559874321', 'badr.saad@example.com'),
(19, 'Rami', 'Fahd', 'Oncologist', '0553456780', 'rami.fahd@example.com'),
(20, 'Dalal', 'Namnaqani', 'Oncologist', '0554455667', 'dalal@example.com');



CREATE TABLE Nurses (
NurseID INT AUTO_INCREMENT PRIMARY KEY,
FirstName VARCHAR(100) NOT NULL,
LastName VARCHAR(100) NOT NULL,
Shift VARCHAR(50),
ContactNumber VARCHAR(15),
Email VARCHAR(150)
);

INSERT INTO Nurses (NurseID, FirstName, LastName, Shift, ContactNumber, Email) VALUES
(1, 'Aisha', 'Mohammed', 'Morning', '0501234567', 'aisha.mohammed@example.com'),
(2, 'Huda', 'Khalid', 'Evening', '0512345678', 'huda.khalid@example.com'),
(3, 'Layla', 'Omar', 'Night', '0523456789', 'layla.omar@example.com'),
(4, 'Rania', 'Ahmed', 'Morning', '0534567890', 'rania.ahmed@example.com'),
(5, 'Sami', 'Yousef', 'Evening', '0545678901', 'sami.yousef@example.com'),
(6, 'Fatima', 'Hassan', 'Night', '0556789012', 'fatima.hassan@example.com'),
(7, 'Amal', 'Salem', 'Morning', '0567890123', 'amal.salem@example.com'),
(8, 'Tariq', 'Faisal', 'Evening', '0578901234', 'tariq.faisal@example.com'),
(9, 'Noura', 'Ibrahim', 'Night', '0589012345', 'noura.ibrahim@example.com'),
(10, 'Hassan', 'Nasser', 'Morning', '0590123456', 'hassan.nasser@example.com');

CREATE TABLE Tests (
TestID INT AUTO_INCREMENT PRIMARY KEY,
TestName VARCHAR(150) NOT NULL,
Description TEXT
);

INSERT INTO Tests (TestID, TestName, Description)
VALUES
(1, 'Blood Test', 'Analysis of blood to check for various diseases and conditions.'),
(2, 'X-Ray', 'Radiographic imaging to view the structure of bones and internal organs.'),
(3, 'MRI', 'Magnetic Resonance Imaging to get detailed images of organs and tissues.'),
(4, 'CT Scan', 'Computed Tomography scan to detect internal injuries or abnormalities.'),
(5, 'Urine Test', 'Chemical analysis of urine to detect infections or abnormalities.'),
(6, 'ECG', 'Electrocardiogram to monitor heart activity and diagnose heart conditions.'),
(7, 'Ultrasound', 'Imaging technique using sound waves to view organs and tissues.'),
(8, 'Liver Function Test', 'Blood test to assess the health of the liver.'),
(9, 'Kidney Function Test', 'Test to evaluate how well the kidneys are working.'),
(10, 'Glucose Test', 'Measurement of blood sugar levels to diagnose diabetes.');


CREATE TABLE TestResults (
ResultID INT AUTO_INCREMENT PRIMARY KEY,
TestID INT NOT NULL,
PatientID INT NOT NULL,
ResultDate DATE,
ResultDetails DATE,
FOREIGN KEY (TestID) REFERENCES Tests(TestID),
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

INSERT INTO TestResults (ResultID, TestID, PatientID, ResultDate, ResultDetails) VALUES
(1, 1, 1, '2024-12-01', 'Hemoglobin: 13.5, WBC: 6000, Platelets: 250,000'),
(2, 1, 10, '2024-12-02', 'Hemoglobin: 12.3, WBC: 5900, Platelets: 220,000'),
(3, 1, 15, '2024-12-03', 'Hemoglobin: 11.8, WBC: 5600, Platelets: 200,000'),
(4, 2, 9, '2024-12-04', 'No fractures detected, normal lung structure.'),
(5, 2, 20, '2024-12-05', 'Minor hairline fracture in left wrist.'),
(6, 2, 25, '2024-12-06', 'Clear image, no abnormalities.'),
(7, 3, 4, '2024-12-07', 'MRI shows minor disc herniation in lumbar region.'),
(8, 3, 23, '2024-12-08', 'Normal scan with no issues detected.'),
(9, 3, 31, '2024-12-09', 'Inflammation detected in shoulder joint.'),
(10, 4, 11, '2024-12-10', 'CT scan reveals slight swelling in abdominal area.'),
(11, 4, 12, '2024-12-11', 'Normal CT scan, no issues found.'),
(12, 4, 36, '2024-12-12', 'Minor lesion detected in liver.'),
(13, 5, 23, '2024-12-13', 'Urine sample shows signs of mild infection.'),
(14, 5, 24, '2024-12-14', 'Urine is clear, no signs of infection.'),
(15, 5, 28, '2024-12-15', 'High protein levels detected.'),
(16, 6, 22, '2024-12-16', 'ECG indicates normal heart rhythm with no abnormalities.'),
(17, 6, 30, '2024-12-17', 'Mild arrhythmia detected.'),
(18, 6, 38, '2024-12-18', 'Heart function appears normal.'),
(19, 7, 39, '2024-12-19', 'Ultrasound shows healthy kidney and liver structure.'),
(20, 7, 6, '2024-12-20', 'Ultrasound reveals gallstones.'),
(21, 7, 19, '2024-12-21', 'No abnormalities found.'),
(22, 8, 12, '2024-12-22', 'Liver enzymes within normal range.'),
(23, 8, 18, '2024-12-23', 'Slightly elevated ALT and AST levels.'),
(24, 8, 26, '2024-12-24', 'Normal liver function.'),
(25, 9, 19, '2024-12-25', 'Kidney function normal with creatinine: 0.9.'),
(26, 9, 32, '2024-12-26', 'Mild proteinuria detected.'),
(27, 9, 34, '2024-12-27', 'Normal renal function.'),
(28, 10, 6, '2024-12-28', 'Fasting glucose level: 105 mg/dL, normal range.'),
(29, 10, 17, '2024-12-29', 'Glucose level: 140 mg/dL, pre-diabetic range.'),
(30, 10, 35, '2024-12-30', 'Glucose level: 180 mg/dL, diabetic range.');


CREATE TABLE Medications (
MedicationID INT AUTO_INCREMENT PRIMARY KEY,
MedicationName VARCHAR(150) NOT NULL,
Dosage VARCHAR(100),
Route ENUM('oral', 'injectable', 'infusion'),
Frequency VARCHAR(100)
);

INSERT INTO Medications (MedicationID, MedicationName, Dosage, Route, Frequency) VALUES
(1, 'Paracetamol', '500mg', 'oral', 'Twice daily'),
(2, 'Ibuprofen', '400mg', 'oral', 'Three times daily'),
(3, 'Amoxicillin', '250mg', 'oral', 'Every 8 hours'),
(4, 'Ceftriaxone', '1g', 'injectable', 'Once daily'),
(5, 'Insulin', '10 units', 'injectable', 'Before meals'),
(6, 'Metformin', '850mg', 'oral', 'Twice daily'),
(7, 'Omeprazole', '20mg', 'oral', 'Once daily'),
(8, 'Losartan', '50mg', 'oral', 'Once daily'),
(9, 'Furosemide', '40mg', 'oral', 'Once daily'),
(10, 'Atorvastatin', '20mg', 'oral', 'Once daily'),
(11, 'Hydrochlorothiazide', '25mg', 'oral', 'Once daily'),
(12, 'Clopidogrel', '75mg', 'oral', 'Once daily'),
(13, 'Azithromycin', '500mg', 'oral', 'Once daily for 3 days'),
(14, 'Salbutamol', '100mcg', 'inhalation', 'As needed'),
(15, 'Prednisone', '10mg', 'oral', 'Once daily'),
(16, 'Warfarin', '5mg', 'oral', 'Once daily'),
(17, 'Dexamethasone', '8mg', 'oral', 'Twice daily'),
(18, 'Morphine', '10mg', 'injectable', 'As needed for pain'),
(19, 'Aspirin', '81mg', 'oral', 'Once daily'),
(20, 'Levothyroxine', '100mcg', 'oral', 'Once daily');

CREATE TABLE Prescriptions (
PrescriptionID INT AUTO_INCREMENT PRIMARY KEY,
PatientID INT NOT NULL,
PhysicianID INT NOT NULL,
MedicationID INT NOT NULL,
PrescriptionDate DATE,
DosageInstructions TEXT,
FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY (PhysicianID) REFERENCES Physicians(PhysicianID),
FOREIGN KEY (MedicationID) REFERENCES Medications(MedicationID)
);

INSERT INTO Prescriptions (PrescriptionID, PatientID, PhysicianID, MedicationID, PrescriptionDate, DosageInstructions) VALUES
(1, 1, 1, 1, '2024-12-01', 'Take one tablet twice daily after meals.'),
(2, 2, 2, 2, '2024-12-02', 'Take one tablet three times daily with water.'),
(3, 3, 3, 3, '2024-12-03', 'Take one capsule every 8 hours for 7 days.'),
(4, 4, 4, 4, '2024-12-04', 'Inject once daily at the same time.'),
(5, 5, 5, 5, '2024-12-05', 'Inject before each meal.'),
(6, 6, 6, 6, '2024-12-06', 'Take one tablet in the morning and evening.'),
(7, 7, 7, 7, '2024-12-07', 'Take one capsule before breakfast.'),
(8, 8, 8, 8, '2024-12-08', 'Take one tablet daily with water.'),
(9, 9, 9, 9, '2024-12-09', 'Take one tablet every morning before breakfast.'),
(10, 10, 10, 10, '2024-12-10', 'Take one tablet every evening after dinner.'),
(11, 11, 11, 11, '2024-12-11', 'Take one tablet daily after lunch.'),
(12, 12, 12, 12, '2024-12-12', 'Take one tablet in the evening.'),
(13, 13, 13, 13, '2024-12-13', 'Take one tablet daily for 3 days.'),
(14, 14, 14, 14, '2024-12-14', 'Use inhaler as needed for shortness of breath.'),
(15, 15, 15, 15, '2024-12-15', 'Take one tablet daily in the morning.'),
(16, 16, 16, 16, '2024-12-16', 'Take one tablet daily at bedtime.'),
(17, 17, 17, 17, '2024-12-17', 'Take one tablet twice daily for inflammation.'),
(18, 18, 18, 18, '2024-12-18', 'Inject as needed for severe pain.'),
(19, 19, 19, 19, '2024-12-19', 'Take one tablet daily to prevent clots.'),
(20, 20, 20, 20, '2024-12-20', 'Take one tablet daily before breakfast.');


CREATE TABLE Insurance (
PolicyNumber VARCHAR(50) PRIMARY KEY,
InsuranceName VARCHAR(150),
CoverageLimit DECIMAL(10, 2)
);

INSERT INTO Insurance (PolicyNumber, InsuranceName, CoverageLimit) VALUES
('POL1000', 'Tawuniya', 50000.00),
('POL1001', 'Bupa Arabia', 75000.00),
('POL1002', 'MedGulf', 60000.00),
('POL1003', 'Allianz', 70000.00),
('POL1004', 'Saudi Enaya', 45000.00),
('POL1005', 'AXA Insurance', 55000.00);