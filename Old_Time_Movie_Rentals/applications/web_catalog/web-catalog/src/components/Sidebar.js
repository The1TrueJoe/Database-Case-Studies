// Navigation sidebar for OTMR app
//
// Implemented by Joseph Telaak

import React from 'react';
import styled from 'styled-components';
import { BrowserRouter as Router, Route, Link, withRouter } from "react-router-dom";

// Style
const StyledSideNav = styled.div`   
    position: fixed;     /* Fixed Sidebar (stay in place on scroll and position relative to viewport) */
    height: 100%;
    width: 75px;     /* Set the width of the sidebar */
    z-index: 1;      /* Stay on top of everything */
    top: 3.4em;      /* Stay at the top */
    background-color: #222; /* Black */
    overflow-x: hidden;     /* Disable horizontal scroll */
    padding-top: 10px;
`;

// Side navigation
class SideNav extends React.Component {
    // List of items
    // Include new items here
    constructor(props) {
        super(props);
        this.state = {
            activePath: props.location.pathname,
            items: [
                {
                    path: '/', /* path is used as id to check which NavItem is active basically */
                    name: 'Home',
                    css: 'fa fa-fw fa-home',
                    key: 1 /* Key is required, else console throws error. Does this please you Mr. Browser?! */
                },
                {
                    path: '/available',
                    name: 'Available',
                    css: 'fa fa-film',
                    key: 2

                }, 
                {
                    path: '/rentals',
                    name: 'Rentals',
                    css: 'fa fa-clock',
                    key: 3

                },
                {
                    path: '/reports',
                    name: 'Reports',
                    css: 'fas fa-hashtag',
                    key: 4
                },
                {
                    path: '/tables',
                    name: 'Tables',
                    css: 'fa fa-table',
                    key: 5
                },
                {
                    path: '/about',
                    name: 'About',
                    css: 'fa fa-info-circle',
                    key: 6
                },
                
              ]
        }
    }

    // Handle clicks
    onItemClick = (path) => {
        this.setState({ activePath: path });

    }

    // Render the bar
    render() {
        // State variables
        const { items, activePath } = this.state;
        
        // Return icons and links
        return(
            <StyledSideNav>
                {
                    items.map((item) => {
                        return (
                            <NavItem 
                                path={item.path}
                                name={item.name}
                                css={item.css}
                                onItemClick={this.onItemClick}
                                active={item.path === activePath}
                                key={item.key}
                            />
                        );
                    })
                }
            </StyledSideNav>
        );
    }
}

const RouterSideNav = withRouter(SideNav);

// Navigation item style
const StyledNavItem = styled.div`
    height: 70px;
    width: 75px; /* width must be same size as NavBar to center */
    text-align: center; /* Aligns <a> inside of NavIcon div */
    margin-bottom: 0;   /* Puts space between NavItems */
    a {
        font-size: 2.7em;
        color: ${(props) => props.active ? "white" : "#20dde7"};
        :hover {
            opacity: 0.7;
            text-decoration: none; /* Gets rid of underlining of icons */
        }  
    }
`;

class NavItem extends React.Component {
    // Handle clicks
    handleClick = () => {
        const { path, onItemClick } = this.props;
        onItemClick(path);

    }

    // Render the item
    render() {
        // Props
        const { active } = this.props;
        
        // Return links
        return(
            <StyledNavItem active={active}>
                <Link to={this.props.path} className={this.props.css} onClick={this.handleClick}>
                    <NavIcon></NavIcon>
                </Link>
            </StyledNavItem>
        );

    }
}

// Navigation icon style
const NavIcon = styled.div`

`;

// Sidebar class
export default class Sidebar extends React.Component {
    render() {
        return (
            <RouterSideNav></RouterSideNav>
        );

    }
}