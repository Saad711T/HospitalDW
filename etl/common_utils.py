from datetime import datetime


def extract_birth_year(date_of_birth):
    return datetime.strptime(date_of_birth, "%Y-%m-%d").year
def get_city_from_address(address):
    return address.split(",")[0].strip()
def build_full_name(first, last):
    return f"{first} {last}"