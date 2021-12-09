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
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/1/pdf">Report 1</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/2/pdf">Report 2</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/3/pdf">Report 3</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/4/pdf">Report 4</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/5/pdf">Report 5</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/6/pdf">Report 6</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/7/pdf">Report 7</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/8/pdf">Report 8</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/9/pdf">Report 9</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/required_queries/10/pdf">Report 10</Button>
      </Styles>

      
    </div>
  </Wrapper>

)