import React, { Component } from 'react';
import { BrowserRouter as Router, Route, Switch, NavLink } from 'react-router-dom'


class Header extends Component {
    render() {
        return (
            <div>
                <h1>header</h1>
                <NavLink to="/">
                    Home
                </NavLink>
                <NavLink to="/catindex">
                    Somewhere
                </NavLink>
                <NavLink to="/catshow">
                    Somewhere Else
                </NavLink>
            </div>
        );
    }
}

export default Header;