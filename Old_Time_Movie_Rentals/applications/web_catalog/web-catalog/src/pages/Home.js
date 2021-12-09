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
    <p>
        As a company, JAB strives to fulfill all of our customers’ needs efficiently and effectively. JAB
        was founded as a start-up in 2021 by three young ambitious entrepreneurs and database
        designers. Even though the company is rather new, it has embarked on database projects for
        over 50 different companies, ranging from your local grocery store to companies as large as
        Target. All of said companies have left positive reviews regarding the service, proving the
        effectiveness of JAB’s designs. Moving into the future, JAB’s mission is to continue supporting
        companies by designing databases that can allow the company to prosper.
      </p>
  </Wrapper>
)