import PySimpleGUI as sg
import pandas as pd
import pymysql.cursors

connection = pymysql.connect(host='10.1.11.26',
                             user='adevarapalli',
                             password='password',
                             database='CASE03_OTMR')

mycursor = connection.cursor()

def start():
    layout = [[sg.Button("Query")]]

    window = sg.Window("Current Transactions", layout).Finalize()

    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED:
            break
        if event == 'Query':
            sqlGet = "SELECT * FROM RENTALS"
            df_query = pd.read_sql_query(sqlGet, connection)
            sg.popup_scrolled('Result', df_query, size=(100,40))


start()
