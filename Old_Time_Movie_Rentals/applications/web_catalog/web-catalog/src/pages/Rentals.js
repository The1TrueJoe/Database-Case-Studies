// Available page
//
// Implemented by Joseph Telaak

import React from 'react';
import styled from 'styled-components';

// Style
const Wrapper = styled.div`
  margin-top: 1em;
  margin-left: 6em;
  margin-right: 6em;
`;

// Return page
export const Rentals = () => (
  <Wrapper>
    <div>
      <h2>Rentals</h2>
      <p>Shows recent rental transactions</p>
      <br></br>
    </div>
    <div>
      {/* CHANGE IP HERE*/}
      <iframe width="1500" height="1000" src="http://127.0.0.1:5000/rentals"></iframe>
    </div>
  </Wrapper>
  
)