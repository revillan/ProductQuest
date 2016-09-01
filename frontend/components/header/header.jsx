import React from 'react';
import { Link, withRouter } from 'react-router';
// import Modal from 'react-modal';
// import SessionForm from '../session_form/session_form_container';
// class Header extends React.Component {

//   constructor() {
//     super();
//      this.customStyles = {
//       content : {
//         top                   : '30%',
//         left                  : '30%',
//         right                 : 'auto',
//         bottom                : 'auto',
//         marginRight           : '-50%',
//         transform             : 'translate(-50%, -50%)'
//
//       },
//       overlay : {
//         position          : 'fixed',
//         top               : 0,
//         left              : 0,
//         right             : 0,
//         bottom            : 0,
//         backgroundColor   : 'black'
//       },
//     };
//     this.openModal = this.openModal.bind(this);
//     this.closeModal = this.closeModal.bind(this);
//     this.login = false;y
//   }
//
//   componentWillMount() {
//     Modal.setAppElement('body');
//     this.setState({modalIsOpen: false});
//   }
//
//
//   openModal() {
//     this.setState({modalIsOpen: true});
//   }
//
//   afterOpenModal() {
//     // references are now sync'd and can be accessed.
//     this.refs.subtitle.style.color = '#f00';
//   }
//
//   setLogSign() {
//     this.setState({login: true});
//   }
//
//   closeModal() {
//     this.setState({modalIsOpen: false});
//   }
//
//
//   render() {
//     if (this.props.currentUser) {
//       return (
//         <hgroup className="header-group">
//           <Link to="/"><h1>Product Quest</h1></Link>
//           <nav className="login-signup">
//             <Link to="/" onClick={this.props.logout}>Log Out</Link>
//           </nav>
//         </hgroup>
//       );
//     } else {
//       return (
//         <hgroup className="header-group">
//           <Link to="/"><h1>Product Quest</h1></Link>
//           <nav className="login-signup">
//             <button id="login" onClick={this.openModal}>Login</button>
//               &nbsp;or&nbsp;
//             <button id="signup" onClick={this.openModal}>Sign up!</button>
//           </nav>
//
//           <Modal isOpen={this.state.modalIsOpen}
//             styles={this.state.customStyles}>
//
//             The modal is open
//
//             <SessionForm/>
//
//             <button onClick={this.closeModal}>CLOSE</button>
//           </Modal>
//
//         </hgroup>
//       );
//     }
//   }
//
// }





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
