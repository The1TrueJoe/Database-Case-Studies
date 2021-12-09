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
export const Available = () => (
  <Wrapper>
    <div>
      <h2>Available</h2>
      <p>Displays the available movies to rent</p>
      <br></br>
    </div>
    <div>
      {/* CHANGE IP HERE*/}
      <iframe width="1500" height="1000" src="http://127.0.0.1:5000/available"></iframe>
    </div>
  </Wrapper>
  
)