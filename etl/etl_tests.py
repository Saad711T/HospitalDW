from config import pd, ENGINE_SRC, ENGINE_DW, build_full_name, extract_birth_year, get_city_from_address

patients = pd.read_sql("SELECT PatientID, FirstName, LastName, DateOfBirth, Gender, Address FROM Patients", engine_src)
patients["FullName"] = patients.apply(lambda row: build_full_name(row["FirstName"], row["LastName"]), axis=1)
patients["BirthYear"] = patients["DateOfBirth"].astype(str).apply(extract_birth_year)
patients["City"] = patients["Address"].apply(get_city_from_address)
dim_patient = patients[["PatientID", "FullName", "Gender", "BirthYear", "City"]]
dim_patient.to_sql("dim_patient", engine_dw, if_exists="replace", index=False)


tests = pd.read_sql("SELECT * FROM Tests", engine_src)
dim_test = tests.rename(columns={"TestID": "test_id", "TestName": "test_name", "Description": "description"})
dim_test.to_sql("dim_test", engine_dw, if_exists="replace", index=False)


test_results = pd.read_sql("SELECT DISTINCT ResultDate FROM TestResults", engine_src)
dim_date = pd.DataFrame(test_results["ResultDate"].unique(), columns=["full_date"])
dim_date["date_id"] = range(1, len(dim_date) + 1)
dim_date["day"] = pd.to_datetime(dim_date["full_date"]).dt.day
dim_date["month"] = pd.to_datetime(dim_date["full_date"]).dt.month
dim_date["quarter"] = pd.to_datetime(dim_date["full_date"]).dt.quarter
dim_date["year"] = pd.to_datetime(dim_date["full_date"]).dt.year
dim_date = dim_date[["date_id", "full_date", "day", "month", "quarter", "year"]]
dim_date.to_sql("dim_date", engine_dw, if_exists="replace", index=False)
