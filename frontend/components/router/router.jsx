import React from 'react';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from '../app';
import SessionFormContainer from '../session_form/session_form_container';

class AppRouter extends React.Component{
  constructor(props) {
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    // this._clearErrorsWhenSwitchForms = this._clearErrorsWhenSwitchForms.bind(this);
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

  // _clearErrorsWhenSwitchForms(nextState, replace){
  //   debugger
  //   this.props.receiveErrors([]);
  // }

  render() {
    let a = <Route path="/" component={ App } />;

    let b = <Route path="/login" component={ SessionFormContainer }
      onEnter={ this._redirectIfLoggedIn }/>;

    let c = <Route path="/signup" component={ SessionFormContainer }
      onEnter={ this._redirectIfLoggedIn } />


    return (
      <Router history={ hashHistory }>
        {a}
        {b}
        {c}
      </Router>
    );
  }

}

export default AppRouter;
