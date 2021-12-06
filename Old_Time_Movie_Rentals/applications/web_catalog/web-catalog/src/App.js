import React from 'react';
import logo from './logo.svg';
import './App.css';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";
import { NavigationBar } from './components/NavigationBar';
import { Home } from './pages/Home';
import { About } from './pages/About';
import { NoMatch } from './pages/NoMatch';
import { RecentTransactions } from './pages/RecentTransactions';
import { RequiredQueries } from './pages/RequiredQueries';
import Sidebar from './components/Sidebar';

function App() {
  return (
    <React.Fragment>
      <Router>
        <NavigationBar />

        <Sidebar />

        <Switch>
          <Route exact path="/" component={Home} />
          <Route path="/about" component={About} />
          <Route path="/recenttransactions" component={RecentTransactions} />
          <Route path="/requiredqueries" component={RequiredQueries} />
          <Route component={NoMatch} />
        </Switch>
      </Router>
    </React.Fragment>
  );
}

export default App;
