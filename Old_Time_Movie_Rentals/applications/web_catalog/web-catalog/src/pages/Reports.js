// Reports page
//
// Implemented by Joseph Telaak

import React from 'react';
import styled from 'styled-components';
import { Button } from 'react-bootstrap';

// Style
const Wrapper = styled.div`
  margin-top: 1em;
  margin-left: 6em;
  margin-right: 6em;
`;

const Styles = styled.div`
  margin-top: 1em;
  margin-left: 6em;
  margin-right: 6em;
  margin-botton: 1em;
`;

// Export page
export const Reports = () => (
  <Wrapper>
    <div>
      <h2>Required Queries</h2>
      <br></br>
    </div>
    <div>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/1/pdf">List the last names of all customers who are now renting</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/2/pdf">List all the customers who lie in UpTown. List their name and address sorted by name</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/3/pdf">List the total payment received by each employee, sorted by employee number</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/4/pdf">List the total number of movies rented out by each store, grouped and sorted by store ID</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/5/pdf">List all the movies never rented out in each store, and grouped by store ID ans sorted by movie ID</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/6/pdf">List all the customers who did not rent any movie and sort by customer ID</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/7/pdf">List the total amount received by each payment type, sort by payment description</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/8/pdf">Display the number of movies rented out based on the movie genre, sort by genre</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/9/pdf">List the top 5 customers based on their total payment, and sort in descending order by total payment</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/10/pdf">List all the managers and the names of the employees they manage. Sort by manager ID then by employee ID</Button>
      </Styles>

      
    </div>
  </Wrapper>

)