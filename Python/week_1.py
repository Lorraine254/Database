import mysql.connector

# Connecting to Mysql server
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234"
)

# Create a cursor object
cursor = conn.cursor()

# Create a new database
database_name = "blog"
cursor.execute(f"CREATE DATABASE IF NOT EXISTS {database_name}")

print(f"Database {database_name} created successfully!")

# close the connection
cursor.close()
conn.close()