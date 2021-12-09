// Default catch page
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

// Page export
export const NoMatch = () => (
  <Wrapper>
    <h2>No Match</h2>
  </Wrapper>
)