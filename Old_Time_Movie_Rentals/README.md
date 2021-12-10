# Old Time Movie Rentals

Files (TEMP): https://drive.google.com/drive/folders/1FBlnWeJtNBFF6alHhgGA9eqtbikLMZAM?usp=sharing

### Deliverables
- [Part 0 Overview](documents/)
- [Part 1 Analysis: BCNF, Function Dependancy, Keys, ERD](documents/)
- [Part 2 Create and Populate Tables: Integrity Constraints, Create Tables, Populate Tables, Dummy Data for Specific Queries](database/)
- [Part 3 Queries: SQL for 10 specific queries](database/required_queries/)
- [Part 4 Implementation: Please check our schema on the class database](database/structure/)
- [Part 5 Programming: Application, Source, Documentation](applications/)

### Links

- [Assignment Outline](given_docs/) Outline for the assignment
- [Assignment Documents]() Business documents (i.e. Executive Summary and Presentation)
- [Database](database/) Database structure and data
- [Cashier Application](applications/cashier_app/) Applications for cashiers to enter a transaction
- [Rental Web Application](applications/web_catalog/) Web catalog

### Setup

#### Run Flask API
- ```cd applications/backend-api/``` Go to directory
- ```pip3 install -r requirements.txt``` Install python dependencies
- ```bash run.sh``` Start server

#### Run React
- ```sudo apt install npm``` Install npm if necessary
- ```cd applications/web_catalog/``` Go to directory
- ```npm install react``` Install react
- ```cd ..``` Go to enclosing directory
- ```sudo bash shellreq.sh``` Install dependencies
- ```bash startserver.sh``` Start server
