import pandas as pd
from sqlalchemy import create_engine
from common_utils import build_full_name, extract_birth_year, get_city_from_address

ENGINE_SRC = create_engine("mysql+pymysql://root:password@localhost/hospitaldb")
ENGINE_DW = {
    "admissions": create_engine("postgresql://postgres:password@localhost/dw_admissions"),
    "appointments": create_engine("postgresql://postgres:password@localhost/dw_appointments"),
    "tests": create_engine("postgresql://postgres:password@localhost/dw_tests"),
    "prescriptions": create_engine("postgresql://postgres:password@localhost/dw_prescriptions")
}
