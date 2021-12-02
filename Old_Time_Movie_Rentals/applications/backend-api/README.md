# Backend API

API that serves data to the frontend webserver

## Structure
- ```/``` Root Directory (Displays a hello message)
    - ```/required_queries/<query_number>/<visualization_type>``` Displays queries required by the assignment
        - ```<query_number>``` Query number [see](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/given_docs/CASE%203%20Olde%20with%20an%20'E'.pdf)
        - ```<visualization_type>``` How the info will be returned
            - ```raw``` Raw string using Python Pandas
            - ```csv``` Comma Separated Values doc
            - ```excel``` Excel file


## Files
- [backend-api](https://github.com/The1TrueJoe/Database-Case-Studies/tree/main/Old_Time_Movie_Rentals/applications/backend-api/backend-api) Source folder
- [run.sh](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/applications/backend-api/run.sh) Starts the Flask application 
- [requirements.txt](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/applications/backend-api/requirements.txt) Application dependencies