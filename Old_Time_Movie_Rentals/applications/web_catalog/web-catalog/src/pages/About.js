// About page
//
// Implemented by Joseph Telaak

import React from 'react';
import styled from 'styled-components';

// Wrapper style
const Wrapper = styled.div`
  margin-top: 1em;
  margin-left: 6em;
  margin-right: 6em;
`;

// Return about page
export const About = () => (
  <Wrapper>
    <div>
      <h2>About Page</h2>
      <br></br> 
    </div>
    <div>
      <p>
        As a company, JAB strives to fulfill all of our customers’ needs efficiently and effectively. JAB
        was founded as a start-up in 2021 by three young ambitious entrepreneurs and database
        designers. Even though the company is rather new, it has embarked on database projects for
        over 50 different companies, ranging from your local grocery store to companies as large as
        Target. All of said companies have left positive reviews regarding the service, proving the
        effectiveness of JAB’s designs. Moving into the future, JAB’s mission is to continue supporting
        companies by designing databases that can allow the company to prosper.
      </p>
      <a href="https://github.com/The1TrueJoe/Database-Case-Studies/tree/main/Old_Time_Movie_Rentals">See our GitHub repository</a>
      <br></br>
      <br></br>
    </div>
    <div>
      <embed src="https://the1truejoe.github.io/Database-Case-Studies/Old_Time_Movie_Rentals/documents/Cover%20Letter.pdf" width="800px" height="800px" />
      <embed src="https://the1truejoe.github.io/Database-Case-Studies/Old_Time_Movie_Rentals/documents/Executive%20Summary.pdf" width="800px" height="800px" />
    </div>
  </Wrapper>
)