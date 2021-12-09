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

.centered{
    height: 100vh;
    display: flex;
    justify - content: center;
    align - items: center;
}


// Retuen page
export const Home = (props) => (
  <div class="centered">
        <h1>WELCOME</h1>
        <h2>Welcome to the home page of the web app. On this web app you can find reports for all of the 10 engineered queries. This database solution was designed by JAB solutions</h2>
  </div>
)