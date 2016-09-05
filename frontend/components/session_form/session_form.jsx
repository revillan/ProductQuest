import React from 'react';
import { Link, hashHistory, withRouter } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this._clearErrorsWhenSwitchForms = this._clearErrorsWhenSwitchForms.bind(this);
  }

  componentDidUpdate(){
    this.redirectIfLoggedIn();
  }

  _clearErrorsWhenSwitchForms(nextState, replace){
    this.props.receiveErrors([]);
  }

  redirectIfLoggedIn(){
    if (this.props.loggedIn) {
      this.props.router.replace('/');
    }
  }

  update(field){
		return e => { this.setState({[field]: e.currentTarget.value }); };
	}

  handleSubmit(e){
    e.preventDefault();
    const user = this.state;
    this.props.processForm({ user });
  }

  demoAccount(e){
    this.setState({
      username: "jsmith",
      password: "lsPrfv"
    });
    const user = { username: "jsmith", password: "lsPrfv" };
    this.props.demo({ user });
  }

  navLink(){
    if (this.props.formType === "login") {
      return <Link to="/signup" className="log-sign" onClick={this._clearErrorsWhenSwitchForms}>
        Sign up </Link>;
    } else {
      return <Link to="/login" className="log-sign" onClick={this._clearErrorsWhenSwitchForms}>
        Login </Link>;
    }
  }

  renderErrors(){
    return(
      <ul className="error-list">
        {this.props.errors.map( (error, i) => (
          <li key={`error-${i}`}>
            {error}
          </li>
        ))}
      </ul>
    );
  }


  // <div className="header-group">
  //   <Link to="/"><h1 className="logo">Product Quest</h1></Link>
  // </div>


  render() {
    return (
      <div>

        <div className="parent">
        <form className="login-form-box">
          <br/>
          <div className='login-directions'>
            { this.props.formType === 'login' ? "Login" : "Sign up" } or { this.navLink() } instead
          </div>
          <div className='login-directions'>
          { this.renderErrors() }
          </div>
          <div className="login-form">
            <br />
            <label> Username:
              <input type="text"
                value={this.state.username}
                onChange={this.update("username")}
                className="login-input" />
            </label>

            <br />
            <label> Password:
              <input type="password"
                value={this.state.password}
                onChange={this.update("password")}
                className="login-input" />
            </label>

            <br />
            <span>
              <input type="button" className="submit" value="Submit" onClick={this.handleSubmit}  />
              <input type="button" className="submit" value="Demo Account" onClick={(e) => this.demoAccount(e)}/>
            </span>
          </div>
        </form>
        </div>
      </div>
    );
  }
}
export default withRouter(SessionForm);
