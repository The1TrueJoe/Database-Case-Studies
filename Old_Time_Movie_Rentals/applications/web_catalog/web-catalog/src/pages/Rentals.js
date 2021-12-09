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
    <iframe width="1000" height="500" src="http://127.0.0.1:5000/reports/1"></iframe>
    </div>
  </Wrapper>
  
)