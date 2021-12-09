import React from 'react';
import styled from 'styled-components';

const Wrapper = styled.div`
  margin-top: 1em;
  margin-left: 6em;
  margin-right: 6em;
`;

export const Rentals = () => (
  <Wrapper>
    <div>
      <h2>Rentals</h2>
      <br></br>
    </div>
    <div>
    <iframe width="1500" height="1000" src="http://127.0.0.1:5000/required_queries/1/pdf"></iframe>
    </div>
  </Wrapper>
  
)