import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';

function Header ({ currentUser, logout }) {
    if (currentUser) {
      return (
        <hgroup className="header-group">
          <Link to="/"><h1>Product Quest</h1></Link>
          <nav className="login-signup">
            <Link to="/" onClick={logout}>Log Out</Link>
          </nav>
        </hgroup>
      );
    } else {
      return (
        <hgroup className="header-group">
          <Link to="/"><h1>Product Quest</h1></Link>
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
