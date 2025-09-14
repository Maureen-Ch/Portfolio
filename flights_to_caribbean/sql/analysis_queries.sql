from pathlib import Path
import zipfile


project_root = Path("flights_to_caribbean")
sql_folder = project_root / "sql"
sql_folder.mkdir(parents=True, exist_ok=True)

analysis_queries_sql = """-- Author: Maureen
-- Project: Flights to Caribbean Islands (Summer 2024)
-- Description: SQL script to analyze cleaned Caribbean flight data

-- Total passengers during Summer 2024
SELECT SUM(PASSENGERS) AS total_passengers
FROM cleaned_flights;

-- Top 10 Caribbean destinations
SELECT DEST_CITY_NAME, SUM(PASSENGERS) AS total_passengers
FROM cleaned_flights
GROUP BY DEST_CITY_NAME
ORDER BY total_passengers DESC
LIMIT 10;

-- Monthly passenger flow
SELECT MONTH, SUM(PASSENGERS) AS total_passengers
FROM cleaned_flights
GROUP BY MONTH
ORDER BY MONTH;

-- Top 10 U.S. origin cities
SELECT ORIGIN_CITY_NAME, SUM(PASSENGERS) AS total_passengers
FROM cleaned_flights
GROUP BY ORIGIN_CITY_NAME
ORDER BY total_passengers DESC
LIMIT 10;

-- Distance summary
SELECT MIN(DISTANCE) AS min_distance,
       MAX(DISTANCE) AS max_distance,
       AVG(DISTANCE) AS avg_distance
FROM cleaned_flights;
"""
(sql_folder / "analysis_queries.sql").write_text(analysis_queries_sql)

# ZIP ARCHIVE
with zipfile.ZipFile("flights_to_caribbean.zip", "w") as zipf:
    for file in sql_folder.glob("*.sql"):
        zipf.write(file, arcname=f"sql/{file.name}")

print("Fichiers SQL générés et compressés dans flights_to_caribbean.zip")