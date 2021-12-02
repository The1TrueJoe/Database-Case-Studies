from flask import Flask
import pymysql
import pandas as pd
import required_queries as rquery

# SQL
connection = pymysql.connect(
    host = "127.0.0.1",
    user = "joseph",
    password = "Passw0rd!",
    database = "OTMR",
    charset = "utf8mb4",
    cursorclass = pymysql.cursors.DictCursor

)

# Flask
app = Flask(__name__)

# Required Query Map
req_query_opt = {
        1: rquery.query1,    # List the last names of all customers who are now renting
        2: rquery.query2,    # List all the customers who lie in UpTown. List their name and address sorted by name
        3: rquery.query3,    # List the total payment received by each employee, sorted by employee number
        4: rquery.query4,    # List the total number of movies rented out by each store, grouped and sorted by store ID
        5: rquery.query5,    # List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID
        6: rquery.query6,    # List all the customers who did not rent any movie and sort by customer ID
        7: rquery.query7,    # List the total amount received by each payment type, sort by payment description
        8: rquery.query8,    # Display the number of movies rented out based on the movie genre, sort by genre
        9: rquery.query9,    # List the top 5 customers based on their total payment, and sort in descending order by total payment
        10: rquery.query10,  # List all the managers and the names of the employees they manage. Sort by manager ID then by employee ID
        404: "USE Test1; SELECT * FROM TESTTBL;"

}

# Front Page
@app.route('/')
def hello_world():
    return "<head><title> OTMR API </title> Welcome to the OTMR API!</head>"

# Required Queries
@app.route('/required_queries/<int:query_num>/<visualization_type>')
def runq1(query_num, visualization_type):
    if (visualization_type == "raw"):
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return df.tail(1000)

    elif (visualization_type == "excel"):
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return df.to_excel

    elif (visualization_type == "csv"):
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return df.to_csv

    else:
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return df.tail(1000)
    