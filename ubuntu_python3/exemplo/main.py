import mysql.connector

mydb = mysql.connector.connect(
    host="mysql.redes.net",
    user="root",
    password="password",
    database="projeto_redes"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM estudante")

result = mycursor.fetchall()

for x in result:
    print(x)