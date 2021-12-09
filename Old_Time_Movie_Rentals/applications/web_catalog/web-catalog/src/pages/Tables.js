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
  margin-top: .25em;
  margin-left: 6em;
  margin-right: 6em;
  margin-botton: .25em;
`;

// Export page
export const Tables = () => (
  <Wrapper>
    <div>
      <h2>Tables</h2>
      <br></br>
    </div>
    <div>

      {/* CHANGE IP HERE*/}

      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/BANKCHECK/pdf/100">BANKCHECK</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/CASH/pdf/100">CASH</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/CONSULTANTS/pdf/100">CONSULTANTS</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/CREDITCARD/pdf/100">CREDITCARD</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/CUSTOMER/pdf/100">CUSTOMER</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/DEBITCARD/pdf/100">DEBITCARD</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/DISTRIBUTOR/pdf/100">DISTRIBUTOR</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/EMPLOYEE/pdf/100">EMPLOYEE</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/MEDIA/pdf/100">MEDIA</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/MOVIE/pdf/100">MOVIE</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/MOVIERENTAL/pdf/100">MOVIERENTAL</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/PAYMENT/pdf/100">PAYMENT</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/PAYMENTSTATUS/pdf/100">PAYMENTSTATUS</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/PAYMENTTYPE/pdf/100">PAYMENTTYPE</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/RENTALSTATUS/pdf/100">RENTALSTATUS</Button>
      </Styles>
      <Styles>
        <Button variant="primary" href="http://127.0.0.1:5000/table_view/STOREMOVIE/pdf/100">STOREMOVIE</Button>
      </Styles>

    </div>
  </Wrapper>

)