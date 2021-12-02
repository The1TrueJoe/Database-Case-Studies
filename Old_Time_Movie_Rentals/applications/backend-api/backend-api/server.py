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
        "query1": rquery.query1,
        "query2": rquery.query2,
        "query3": rquery.query3,
        "query4": rquery.query4,
        "query5": rquery.query5,
        "query6": rquery.query6,
        "query7": rquery.query7,
        "query8": rquery.query8,
        "query9": rquery.query9,
        "query10": rquery.query10,
        "test": "USE Test1; SELECT * FROM TESTTBL;"

}

# Front Page
@app.route('/')
def hello_world():
    return "<head><title> OTMR API </title> Welcome to the OTMR API!</head>"

# Required Queries
@app.route('/required_queries/<query_name>/raw')
def runq1(query_name):
    df = pd.read_sql_query(req_query_opt[query_name], connection)
    return df.tail(1000)
