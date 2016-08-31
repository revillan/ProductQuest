import React from 'react';
import { Link, withRouter } from 'react-router';

function Header ({ currentUser, logout }) {
    if (currentUser) {
      return (
        <hgroup className="header-group">
          <button className="header-button" onClick={logout}>Log Out</button>
        </hgroup>
      );
    } else {
      return (
        <hgroup className="header-group">
          <nav className="login-signup">
          <Link to="/login">Login</Link>
            &nbsp;or&nbsp;
          <Link to="/signup">Sign up!</Link>
          </nav>
        </hgroup>
      );
    }
  }

export default withRouter(Header);
