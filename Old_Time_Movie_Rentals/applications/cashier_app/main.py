import PySimpleGUI as sg
import pymysql.cursors
import pandas as pd
import string    
import random


# Connecting to the database
connection = pymysql.connect(host='10.1.11.26',
                             user = 'adevarapalli',
                             password='password',
                             database='CASE03_OTMR')



mycursor = mydb.cursor()

'''
    How to insert things into the database
    1) Store MediaID, CustomerID, MovieID, and EmployeeSIN into one array called CheckoutInformation
    2) Store StatusID into an other array called StatusArray
    3) Generate new screen for PaymentID and prompt different screen based on either credit/debit, check or cash
    4) Insert this data into the approiate tables
    4) Use all the information to generate the SQL query

'''


# Order of information in the array --> MediaID, CustomerID, MovieID, StoreID, EmployeeSIN
CheckoutInformation = []

StatusArray = []

# These are the functions that handle the payment processing for the different payment options
def debit_credit_processing():
    # Generating alpha mumeric string for the new payment statusID
    S = 5  
    StatusID = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))    
    sql = "INSERT INTO customers (name, address) VALUES (%s, %s)"
    layout = [[sg.Text("CustomerID"), sg.Input(key='CustomerID')],
              [sg.Text("EmployeeSIN"), sg.Input(key='EmployeeSIN')],
              [sg.Text("Amount paid"), sg.Input(key='Amount')],
              [sg.Text("Date please enter in yyyy-mm-dd format"), sg.Input(key='Date')],
              [sg.Text("Enter card number"), sg.Input(key='CardNumber')],
              [sg.Text("Type (i.e. VISA, MASTER, AMEX)"), sg.Input(key='CardType')],
              [sg.Text("Card expiry Date mm/yyyy"), sg.Input(key='Expire')],
              [sg.Button('debit')],
              [sg.Button('credit')],
              [sg.Button('close')]]
    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED or event == "close":
            break
        if event == "debit":
            pass
    window.close()
        
    

def cash_processing():
    # Generating alpha numeric string for the new Payment statusID
    S = 5  
    StatusID = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))    
    sql = "INSERT INTO customers (name, address) VALUES (%s, %s)"
    # Inserting new payment status in PAYMENTSTATUS table
    val = (StatusID, "Payment Approved")
    mycursor.execute(sql, val)
    connection.commit()
    # Creating new window so that the employee can enter customer info, their info, amount, and date of payment
    layout = [[sg.Text("CustomerID"), sg.Input(key='CustomerID')],
              [sg.Text("EmployeeSIN"), sg.Input(key='EmployeeSIN')],
              [sg.Text("Amount paid"), sg.Input(key='Amount')],
              [sg.Text("Date please enter in yyyy-mm-dd format"), sg.Input(key='Date')],
              [sg.Button('close')],
              [sg.Button('submit')]]
    #Creating alphanumeri paymentID
    S = 11
    PaymentID = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))
    while True:
        event, values = window.read()
        # closing window on exit
        if event == sg.WIN_CLOSED or event == "close":
            break
        # Inserting the data into the payment table after submit button is hit
        if event == "submit":
            sql = "INSERT INTO PAYMENT (CustomerID, StatusID, PaymentID, EmployeeSIN, PaymentAmount, PaymentDateTime) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (values["CustomerID"], StatusID, PaymentID, values["EmployeeSIN"], values["Amount"], values["Date"])
            mycursor.execute(sql, val)
            connection.commit()
            sqlCash = "INSERT INTO (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "CASH PAYMENT")
            mycursor.execute(sqlCash, val)
            connection.commit()
        window.close()


def check_processing():
    print("Check processing")


# This is the payment window where the caisher will select if the customer is paying with debit/credit, cash or check it will than open another window based on input
def payment_window_main():
    layout = [[sg.Text("Payment Screen")],
              [sg.Button('Debit/Credit')],
              [sg.Button('Cash')],
              [sg.Button('Check')]
            ]
    window = sg.Window("Second Window", layout, modal=True)
    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED:
            break
        if event == 'Debit/Credit':
            debit_credit_processing()
        if event == 'Cash':
            cash_processing()
        if event == "Check":
            check_processing()
    window.close()


# This is the main window that will prompt cashier to enter all the information about the media, customer, and themselves
def main():
    layout = [ [sg.Text("Welcome to the cashier app for OTMR, this is where you will rent out movies")],
               [sg.Text("Customer ID. This can be found on the back of their card."), sg.Input(key='CustomerID')],
               [sg.Text("Media ID. This can be found on the back of the DVD box"), sg.Input(key='MediaID')],
               [sg.Text("Movie ID. This can be found on the back of the DVD box"), sg.Input(key='MovieID')],
               [sg.Text("Please enter your storeID, a reference sheet should be on the side of your computer"), sg.Input(key="StoreID")],
               [sg.Text("Please enter your EmployeeSIN"), sg.Input(key="EmployeeSIN")],
               [sg.Button('Checkout'), sg.Button('Close')]
        ]

    window = sg.Window('OTMER Cashier app', layout).Finalize()

    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED or event == 'Close':
            break
        if event == "Checkout":
            #Clearing previous values stored in the array
            CheckoutInformation.clear()
            # Storing the values into CheckoutInformation array
            CheckoutInformation.append(values["MediaID"])
            CheckoutInformation.append(values["CustomerID"])
            CheckoutInformation.append(values["MovieID"])
            CheckoutInformation.append(values["StoreID"])
            CheckoutInformation.append(values["EmployeeSIN"])
            payment_window_main()

    window.close()

if __name__ == "__main__":
    main()
