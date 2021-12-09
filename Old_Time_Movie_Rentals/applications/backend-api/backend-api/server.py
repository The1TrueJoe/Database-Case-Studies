#
#
#
#
#

from flask import Flask
from flask.helpers import send_from_directory
import pymysql
import pandas as pd
import required_queries as rquery
import logging
import pdfkit
import os

# SQL Connection (Localhost)
# connection = pymysql.connect(
#     host = "127.0.0.1",
#     user = "joseph",
#     password = "Passw0rd!",
#     database = "OTMR",
#     charset = "utf8mb4",
#     cursorclass = pymysql.cursors.DictCursor
#
# )

# SQL Connection (Classroom database)
connection = pymysql.connect(
    host = "10.1.11.26",
    user = "jtelaak",
    password = "password",
    database = "CASE03_OTMR",
    charset = "utf8mb4",
    cursorclass = pymysql.cursors.DictCursor

)

# Flask
app = Flask(__name__)

# Reports Location
basedir = os.path.abspath(os.path.dirname(__file__))
app.config["REPORTS_LOC"] = os.path.join(basedir, 'static/reports/')


# Logging
handler = logging.FileHandler("test.log")  # Create the file logger
app.logger.addHandler(handler)             # Add it to the built-in logger
app.logger.setLevel(logging.DEBUG)         # Set the log level to debug

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
def runreqquery(query_num, visualization_type):
    # Log
    app.logger.info("Running required query " + str(query_num) + " outputing as " + visualization_type)
    
    # Raw text format
    if (visualization_type == "raw"):
        # Dataframe
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return str(df.tail(1000))

    # PDF Format
    elif (visualization_type == "pdf"):
        return queryaspdf(query=req_query_opt[query_num], filename = 'report' + str(query_num))

    # Default raw text format
    else:
        # Dataframe
        df = pd.read_sql_query(req_query_opt[query_num], connection)
        return str(df.tail(1000))

# Table view
@app.route('/table_view/<table_name>/<visualization_type>/<int:display_count>')
def showtable(table_name, visualization_type, display_count):
    # Log
    app.logger.info("Viewing table " + table_name + " outputing as " + visualization_type + " printing " + str(display_count) + "rows")
    
    # Query
    query = 'SELECT * FROM ' + table_name + ' LIMIT ' + str(display_count) + ';'

    # Raw text format
    if (visualization_type == "raw"):
        # Dataframe
        df = pd.read_sql_query(query, connection)
        return str(df.tail(1000))

    # PDF Format
    elif (visualization_type == "pdf"):
        return queryaspdf(query=query, filename = 'table' + table_name)

    # Default raw text format
    else:
        # Dataframe
        df = pd.read_sql_query(query, connection)
        return str(df.tail(1000))

# Get as PDF
def queryaspdf(query, filename):
    # HTML File
    htmldoc = app.config["REPORTS_LOC"] + filename + '.html'

    # Get query as HTML
    df = pd.read_sql_query(query, connection)
    df.to_html(htmldoc)
    
    # Convert to PDF
    pdfkit.from_file(htmldoc, app.config["REPORTS_LOC"] + filename + '.pdf')
    
    # Return file
    return send_from_directory(app.config["REPORTS_LOC"], path = filename + '.pdf', as_attachment=False)
