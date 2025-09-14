from pathlib import Path
import zipfile


project_root = Path("flights_to_caribbean")
sql_folder = project_root / "sql"
sql_folder.mkdir(parents=True, exist_ok=True)

wdata_cleaning_sql = """-- Author: Maureen
-- Project: Flights to Caribbean Islands (Summer 2024)
...
"""
(sql_folder / "data_cleaning.sql").write_text(data_cleaning_sql)

SELECT *
FROM flights_data
WHERE YEAR = 2024
  AND MONTH IN (6, 7, 8)
  AND DEST_COUNTRY_NAME IN (
    'Bahamas', 'Jamaica', 'Puerto Rico', 'Dominican Republic',
    'Cuba', 'Barbados', 'Saint Lucia', 'Trinidad and Tobago',
    'Antigua and Barbuda', 'Saint Kitts and Nevis', 'Saint Vincent and the Grenadines',
    'Grenada', 'Haiti', 'Aruba', 'Curacao'
  )
  AND ORIGIN_COUNTRY_NAME = 'United States';
"""
(sql_folder / "data_cleaning.sql").write_text(data_cleaning_sql)

# ZIP ARCHIVE
with zipfile.ZipFile("flights_to_caribbean", "w") as zipf:
    for file in sql_folder.glob("*.sql"):
        zipf.write(file, arcname=f"sql/{file.name}")

print("Fichiers SQL générés et compressés dans flights_to_caribbean")