# Backend API

## Structure
- ```/``` Root Directory (Displays a hello message)
    - ```/required_queries/<query_number>/<visualization_type>``` Displays queries required by the assignment
        - ```<query_number>``` Query number [see](https://github.com/The1TrueJoe/Database-Case-Studies/blob/main/Old_Time_Movie_Rentals/given_docs/CASE%203%20Olde%20with%20an%20'E'.pdf)
        - ```<visualization_type>``` How the info will be returned
            - ```raw``` Raw string using Python Pandas
            - ```csv``` Comma Separated Values doc
            - ```excel``` Excel file