import React from 'react';
// import { Link } from 'react-router';
import  HeaderContainer from './header/header_container';

class App extends React.Component {

  render() {
    const { main, products } = this.props;
    return (
      <div>
        <HeaderContainer/>
        {this.props.children}
        <div className="Main">
          {main}
        </div>
        <div className="Products">
          {products}
        </div>
      </div>
  );}
}

export default App;
