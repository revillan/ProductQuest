import React from 'react';
import { Router, Route, IndexRoute, hashHistory } from 'react-router';
import App from '../app';
import SessionFormContainer from '../session_form/session_form_container';

class AppRouter extends React.Component{

  render() {
    let a = <Route path="/" component={ App } />

    let b = <Route path="/login" component={ SessionFormContainer } />

    let c = <Route path="/signup" component={ SessionFormContainer } />


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
