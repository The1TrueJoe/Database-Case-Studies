# Backend API

API that serves data to the frontend webserver.

## About

Since [React](https://reactjs.org/) is a front-end JavaScript framwork, we had to use [Flask](https://flask.palletsprojects.com/en/2.0.x/) to enable dynamic pages using data from the database.

## How to start

Start the sever by running ```bash run.sh```

## Structure
- ```/``` Root Directory (Displays a hello message)
    - ```/available``` Displays all the available movies to rent
    - ```/rentals``` Displays recent rentals
    - ```/required_queries/<query_number>/<visualization_type>``` Displays queries required by the assignment
        - ```<query_number>``` Query number [see](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/given_docs/CASE%203%20Olde%20with%20an%20'E'.pdf)
        - ```<visualization_type>``` How the info will be returned
            - ```raw``` Raw string using Python Panda
            - ```pdf``` PDF Report
    - ```/table_view/<table_name>/<visualization_type>/<int:display_count>``` Displays all info in table
        - ```<table_name>``` Name of table to look at
        - ```<visualization_type>``` How the info will be returned
            - ```raw``` Raw string using Python Panda
            - ```pdf``` PDF Report
        - ```<int:display_count>``` Number of rows to display


## Files
- [backend-api](https://github.com/The1TrueJoe/Database-Case-Studies/tree/main/Old_Time_Movie_Rentals/applications/backend-api/backend-api) Source folder
- [run.sh](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/applications/backend-api/run.sh) Starts the Flask application 
- [requirements.txt](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/applications/backend-api/requirements.txt) Application dependencies