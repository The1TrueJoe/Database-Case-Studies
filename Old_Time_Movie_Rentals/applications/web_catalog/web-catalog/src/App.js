import React from 'react';
import logo from './logo.svg';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import { NavigationBar } from './components/NavigationBar';
import { Home } from './pages/Home';
import { About } from './pages/About';
import { NoMatch } from './pages/NoMatch';
import { Rentals } from './pages/Rentals';
import { Reports } from './pages/Reports';
import Sidebar from './components/Sidebar';

// Main app for the OTMR app
//
// Written by Joseph Telaak

function App() {
  return (
    <React.Fragment>
      <Router>
        {/* Include top navigation bar */}
        <NavigationBar />

        {/* Include side navigation bar */}
        <Sidebar />

        {/* 
          Routing 
          --- Add new menu icons here ---  
        */}
        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/about" component={About} />
          <Route path="/rentals" component={Rentals} />
          <Route path="/reports" component={Reports} />
          <Route component={NoMatch} />
        </Switch>
      </Router>
    </React.Fragment>
  );
}

export default App;
