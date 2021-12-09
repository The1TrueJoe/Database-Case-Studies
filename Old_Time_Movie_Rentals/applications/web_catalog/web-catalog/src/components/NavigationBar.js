// Navigation top bar for OTMR app
//
// Implemented by Joseph Telaak

import React from 'react';
import { Nav, Navbar, Form, FormControl } from 'react-bootstrap';
import styled from 'styled-components';

// Styles
const Styles = styled.div`
  .navbar { background-color: #222; }
  a, .navbar-nav, .navbar-light .nav-link {
    color: #20dde7;
    &:hover { color: white; }
  }
  .navbar-brand {
    font-size: 1.4em;
    color: #20dde7;
    &:hover { color: white; }
    position: absolute !important;
    left: 25%;
    right: 25%;
  }
  /* .form-center {
    position: absolute !important;
    left: 25%;
    right: 25%;
  } */
`;

// Navigation bar
export const NavigationBar = () => (
  <Styles>
    <Navbar expand="lg">
      {/* Brand titles */}
      <Navbar.Brand href="/">Old Time Movie Rentals</Navbar.Brand>

      <Navbar.Toggle aria-controls="basic-navbar-nav"/>
      
      {/* <Form className="form-center">
        <FormControl type="text" placeholder="Search" className="" />
      </Form> */}

      <Navbar.Collapse id="basic-navbar-nav">

        {/* Top menu bar */}
        <Nav className="ml-auto">
          <Nav.Item><Nav.Link href="/">Home</Nav.Link></Nav.Item> 
          <Nav.Item><Nav.Link href="/about">About</Nav.Link></Nav.Item>
        </Nav>

      </Navbar.Collapse>
    </Navbar>
  </Styles>
)