import mysql.connector

# Connect to MySQL Server
conn = mysql.connector.connect(
    host="localhost",
    database="movies",
    user="root",
    password="1234"
)

# Create a cursor object
cursor = conn.cursor()

# Execute the SQL statement to create the table

# Creating a movie tabe
cursor.execute("""
    CREATE TABLE movie(
        id INT PRIMARY KEY AUTO_INCREMENT,
        title VARCHAR(45),
        year date
    )
""")

# Creating actors table
cursor.execute("""
    CREATE TABLE actors(
        id INT PRIMARY KEY AUTO_INCREMENT,
        name VARCHAR(45),
        age INT
    )
""")

# Commit the changes
conn.commit()

print("Table created successfully")

# Close the connection
cursor.close()
conn.close()