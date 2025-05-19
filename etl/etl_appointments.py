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



appointments = pd.read_sql("SELECT DISTINCT Status FROM Appointments", engine_src)
dim_status = pd.DataFrame(appointments["Status"].unique(), columns=["StatusName"])
dim_status["StatusID"] = dim_status.index + 1
dim_status.to_sql("dim_status", engine_dw, if_exists="replace", index=False)
