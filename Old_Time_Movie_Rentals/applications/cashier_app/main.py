import PySimpleGUI as sg

layout = [ [sg.Text("Welcome to the cashier app for OTMR, this is where you will rent out movies")],
           [sg.Text("Customer ID. This can be found on the back of their card."), sg.Input(key='CustomerID')],
           [sg.Text("Movie ID. This can be found on the back of the DVD box"), sg.Input(key='MovieID')],
           [sg.Text("Please enter your storeID, a reference sheet should be on the side of your computer"), sg.Input(key="StoreID")],
           [sg.Text("Please enter your EmployeeID"), sg.Input(key="EmployeeID")]
    ]

window = sg.Window('OTMER Cashier app', layout).Finalize()
