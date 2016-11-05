import React from 'react';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from '../app';
import SessionFormContainer from '../session_form/session_form_container';
import  HeaderContainer from '../header/header_container';
import ProductContainer from '../product/product_index_container';
import ProfileContainer from '../profile/profile_container';


class AppRouter extends React.Component{
  constructor(props) {
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
  }

  _ensureLoggedIn(nextState, replace){
    const currentUser = this.props.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  }

  _redirectIfLoggedIn(nextState, replace){
    const currentUser = this.props.currentUser;
    if (currentUser) {
      replace('/');
    }
  }

  render() {

    return (
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>
          <IndexRoute component={ ProductContainer }/>
          <Route path="login" component={ SessionFormContainer } onEnter={ this._redirectIfLoggedIn }/>
          <Route path="signup" component={ SessionFormContainer } onEnter={ this._redirectIfLoggedIn }/>
          <Route path="users/:id" components={ {main: ProfileContainer, products: ProductContainer} } />
        </Route>
      </Router>
    );
  }

}

export default AppRouter;
