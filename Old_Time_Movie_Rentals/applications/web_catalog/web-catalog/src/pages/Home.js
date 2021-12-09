// Home page for OTMR app
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

// Retuen page
export const Home = (props) => (
  <Wrapper>
    <p>This is a paragraph and I am writing on the home page</p>
    <p>This is another paragraph, hi hey hello whatsup yo</p>
  </Wrapper>
)