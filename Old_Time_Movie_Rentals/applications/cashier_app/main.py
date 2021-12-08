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

mycursor = connection.cursor()

'''
    How to insert things into the database
    1) Store MediaID, CustomerID, MovieID, and EmployeeSIN into one array called CheckoutInformation
    2) Store StatusID into an other array called StatusArray
    3) Generate new screen for PaymentID and prompt different screen based on either credit/debit, check or cash
    4) Insert this data into the approiate tables
    4) Use all the information to generate the SQL query

'''


# Generating alpha mumeric string for the new payment statusID that is going to be used later in the program and inserted into the database
S = 5  
StatusID = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))

# Inserting new payment status in PAYMENTSTATUS
sql = "INSERT INTO PAYMENTSTATUS (StatusID, Description) VALUES (%s, %s)"
val = (StatusID, "Payment Approved")
mycursor.execute(sql, val)
connection.commit()

# Generating alpha numeric string for the new payment PaymentID that going to be used throughout the program and then inserted into the database
S = 11
PaymentID = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))



# Order of information in the array --> MediaID, CustomerID, MovieID, StoreID, EmployeeSIN
CheckoutInformation = []






# This is the main window that will prompt cashier to enter all the information about the media, customer, and themselves
def main():
    layout = [ [sg.Text("Welcome to the cashier app for OTMR, this is where you will rent out movies")],
               [sg.Text("Customer ID. This can be found on the back of their card."), sg.Input(key='CustomerID')],
               [sg.Text("Media ID. This can be found on the back of the DVD box"), sg.Input(key='MediaID')],
               [sg.Text("Movie ID. This can be found on the back of the DVD box"), sg.Input(key='MovieID')],
               [sg.Text("Please enter your storeID, a reference sheet should be on the side of your computer"), sg.Input(key="StoreID")],
               [sg.Text("Please enter your EmployeeSIN"), sg.Input(key="EmployeeSIN")],
               [sg.Text("Please enter the date yyyy-mm-dd format"), sg.Input(key="Date")],
               [sg.Text("Enter return date, which is 10 days after checkout date"), sg.Input(key="Return")],
               [sg.Text("Please enter rental rate"), sg.Input(key="Rate")],
               [sg.Button('Checkout'), sg.Button('Close')]
        ]

    window = sg.Window('OTMR Cashier app', layout).Finalize()

    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED or event == 'Close':
            break
        if event == "Checkout":
            #Clearing previous values stored in the array
            CheckoutInformation.clear()
            
            #Generating Rental StatusID
            S = 5  
            StatusIDRental = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))

            # Inserting new rental status in RENTALSTATUS
            sql = "INSERT INTO RENTALSTATUS (StatusID, Description) VALUES (%s, %s)"
            val = (StatusIDRental, "Rented out on time")
            mycursor.execute(sql, val)
            connection.commit()
            
            # Storing the values into CheckoutInformation array
            sqlMovieRental = "INSERT INTO MOVIERENTAL (MediaID, CustomerID, StatusID, MovieID, StoreID, EmployeeSIN, PaymentID, RentalDateTime, DueDate, OverDueCharge, RentalRate) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
            val = (values["MediaID"], values["CustomerID"], StatusIDRental, values["MovieID"], values["StoreID"], values["EmployeeSIN"], PaymentID, values["Date"], values["Return"], 0, int(values["Rate"]))
            mycursor.execute(sqlMovieRental, val)
            connection.commit()
            break

    window.close()




# These are the functions that handle the payment processing for the different payment options
def debit_credit_processing():
    # Creating new window so that the employee can enter other neccassry information
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
    window = sg.Window("Debit/Credit Window", layout, modal=True)
    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED or event == "close":
            break
        if event == "debit":
            # Putting things into PAYMENT
            sql = "INSERT INTO PAYMENT (CustomerID, StatusID, PaymentID, EmployeeSIN, PaymentAmount, PaymentDateTime) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (values["CustomerID"], StatusID, PaymentID, values["EmployeeSIN"], int(values["Amount"]), values["Date"])
            mycursor.execute(sql, val)
            connection.commit()

            # Inserting things into PAYMENTTYPE
            sqlDebitPaymentType = "INSERT INTO PAYMENTTYPE (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "Approved Debit Card Payment")
            mycursor.execute(sqlDebitPaymentType, val)
            connection.commit()

            # Inserting into the DEBIT table
            sqlDebit = "INSERT INTO DEBITCARD (PaymentID, DebitCardNumber, DebitCardType, DebitCardExpiry) VALUES (%s, %s, %s, %s)"
            val = (PaymentID, values["CardNumber"], values["CardType"], values["Expire"])
            mycursor.execute(sqlDebit, val)
            connection.commit()

        if event == "credit":
            # Putting things into PAYMENT
            sql = "INSERT INTO PAYMENT (CustomerID, StatusID, PaymentID, EmployeeSIN, PaymentAmount, PaymentDateTime) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (values["CustomerID"], StatusID, PaymentID, values["EmployeeSIN"], int(values["Amount"]), values["Date"])
            mycursor.execute(sql, val)
            connection.commit()

            # Inserting things into PAYMENTTYPE
            sqlCreditPaymentType = "INSERT INTO PAYMENTTYPE (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "Approved Credit Card Payment")
            mycursor.execute(sqlDebitPaymentType, val)
            connection.commit()

            # Inserting into the CREDIT table
            sqlCredit = "INSERT INTO CREDITCARD (PaymentID, DebitCardNumber, DebitCardType, DebitCardExpiry) VALUES (%s, %s, %s, %s)"
            val = (PaymentID, values["CardNumber"], values["CardType"], values["Expire"])
            mycursor.execute(sqlDebit, val)
            connection.commit()
            break
            
    window.close()
    main()
        
    

def cash_processing():    
    # Creating new window so that the employee can enter customer info, their info, amount, and date of payment
    layout = [[sg.Text("CustomerID"), sg.Input(key='CustomerID')],
              [sg.Text("EmployeeSIN"), sg.Input(key='EmployeeSIN')],
              [sg.Text("Amount paid"), sg.Input(key='Amount')],
              [sg.Text("Date please enter in yyyy-mm-dd format"), sg.Input(key='Date')],
              [sg.Button('close')],
              [sg.Button('submit')]]

    window = sg.Window("Cash payment Window", layout, modal=True)
    while True:
        event, values = window.read()
        # closing window on exit
        if event == sg.WIN_CLOSED or event == 'close':
            break
        # Inserting the data into the payment table after submit button is hit
        if event == "submit":
            # Putting things into PAYMENT
            sql = "INSERT INTO PAYMENT (CustomerID, StatusID, PaymentID, EmployeeSIN, PaymentAmount, PaymantDateTime) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (values["CustomerID"], StatusID, PaymentID, values["EmployeeSIN"], int(values["Amount"]), values["Date"])
            mycursor.execute(sql, val)
            connection.commit()
            #Inserting things into PAYMENTTYPE
            sqlCash = "INSERT INTO PAYMENTTYPE (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "Cash Paymenet")
            mycursor.execute(sqlCash, val)
            connection.commit()
            # Inserting into CASH
            sql = "INSERT INTO CASH (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "CASH PAYMENT")
            mycursor.execute(sql, val)
            connection.commit()
            break
    window.close()
    main()


def check_processing():
    # Creating new window so that the employee can enter other neccassry information
    layout = [[sg.Text("CustomerID"), sg.Input(key='CustomerID')],
              [sg.Text("EmployeeSIN"), sg.Input(key='EmployeeSIN')],
              [sg.Text("Amount paid"), sg.Input(key='Amount')],
              [sg.Text("Date please enter in yyyy-mm-dd format"), sg.Input(key='Date')],
              [sg.Text("Enter checknumber"), sg.Input(key='CheckNumber')],
              [sg.Text("Enter banknumber"), sg.Input(key='BankNumber')],
              [sg.Text("Enter Bank Name"), sg.Input(key='BankName')],
              [sg.Button('submit')],
              [sg.Button('close')]
              ]

    window = sg.Window("Check Processing Window", layout, modal=True)
    
    while True:
        event, values = window.read()
        # closing window on exit
        if event == sg.WIN_CLOSED or event == "close":
            break
        if event == "submit":
            # Putting things into PAYMENT
            sqlCheckPayment = "INSERT INTO PAYMENT (CustomerID, StatusID, PaymentID, EmployeeSIN, PaymentAmount, PaymentDateTime) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (values["CustomerID"], StatusID, PaymentID, values["EmployeeSIN"], int(values["Amount"]), values["Date"])
            mycursor.execute(sqlCheckPayment, val)
            connection.commit()
            
            #Inserting things into PAYMENTTYPE
            sqlCheck = "INSERT INTO PAYMENTTYPE (PaymentID, Description) VALUES (%s, %s)"
            val = (PaymentID, "Check Payment")
            mycursor.execute(sqlCheck, val)
            connection.commit()

            # Insert into BANKCHECK
            sqlBankCheck = "INSERT INTO BANKCHECK (PaymentID, CheckNumber, BankNumber, BankName) VALUES (%s, %s, %s, %s)"
            val = (PaymentID, values["CheckNumber"], values["BankNumber"], values["BankName"])
            mycursor.execute(sqlBankCheck, val)
            connection.commit()
    window.close()
    main()



# This is the payment window where the caisher will select if the customer is paying with debit/credit, cash or check it will than open another window based on input
def payment_window_main():
    layout = [[sg.Text("Payment Screen")],
              [sg.Button('Debit/Credit')],
              [sg.Button('Cash')],
              [sg.Button('Check')]
            ]
    window = sg.Window("Payment Window", layout, modal=True)
    while True:
        event, values = window.read()
        if event == sg.WIN_CLOSED:
            break
        if event == 'Debit/Credit':
            debit_credit_processing()
            break
        if event == 'Cash':
            cash_processing()
            break
        if event == "Check":
            check_processing()
            break
    window.close()


if __name__ == "__main__":
    payment_window_main()
