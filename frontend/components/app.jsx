import React from 'react';
// import { Link } from 'react-router';
import  HeaderContainer from './header/header_container';

const App = ({children}) => (
  <div>
    <h1>Product Quest</h1>
    <HeaderContainer/>
    {children}
  </div>
);

export default App;
