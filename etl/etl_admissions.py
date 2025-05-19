from config import pd, ENGINE_SRC, ENGINE_DW, build_full_name, extract_birth_year, get_city_from_address

patients = pd.read_sql("SELECT PatientID, FirstName, LastName, DateOfBirth, Gender, Address FROM Patients", engine_src)
patients["FullName"] = patients.apply(lambda row: build_full_name(row["FirstName"], row["LastName"]), axis=1)
patients["BirthYear"] = patients["DateOfBirth"].astype(str).apply(extract_birth_year)
patients["City"] = patients["Address"].apply(get_city_from_address)
dim_patient = patients[["PatientID", "FullName", "Gender", "BirthYear", "City"]]
dim_patient.to_sql("dim_patient", engine_dw, if_exists="replace", index=False)


physicians = pd.read_sql("SELECT PhysicianID, FirstName, LastName, Specialization FROM Physicians", engine_src)
physicians["FullName"] = physicians.apply(lambda row: build_full_name(row["FirstName"], row["LastName"]), axis=1)
dim_physician = physicians[["PhysicianID", "FullName", "Specialization"]]
dim_physician.to_sql("dim_physician", engine_dw, if_exists="replace", index=False)



admissions = pd.read_sql("SELECT AdmissionID, AdmissionDiagnosis FROM Admissions", engine_src)
dim_diagnosis = pd.DataFrame(admissions["AdmissionDiagnosis"].unique(), columns=["DiagnosisName"])
dim_diagnosis["DiagnosisID"] = dim_diagnosis.index + 1
dim_diagnosis.to_sql("dim_diagnosis", engine_dw, if_exists="replace", index=False)