import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import AddProductForm from '../product/add_product_form';
// import SessionForm from '../session_form/session_form_container';
class Header extends React.Component {

  constructor() {
    super();
     this.customStyles = {
      content : {
        top                   : '30%',
        left                  : '30%',
        right                 : 'auto',
        bottom                : 'auto',
        marginRight           : '-50%',
        transform             : 'translate(-50%, -50%)'

      },
      overlay : {
        position          : 'fixed',
        top               : '0px',
        left              : '0px',
        right             : '0px',
        bottom            : '0px',
        backgroundColor   : 'black'
      },
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.login = false;
    this.state = {query: ""}
  }

  componentWillMount() {
    Modal.setAppElement('body');
    this.setState({modalIsOpen: false});
  }


  openModal() {
    this.setState({modalIsOpen: true});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    this.refs.subtitle.style.color = '#f00';
  }

  setLogSign() {
    this.setState({login: true});
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }

  autosearch() {
    return e => ( this.props.requestSearch({query: e.currentTarget.value }) );
  }

    render() {

      let search =  <input type="text"
              placeholder="Discover your next favorite thing..."
              className="search-bar" onChange={this.autosearch()}/>
      if (this.props.currentUser) {
        return (
          <hgroup className="header-group">
            <nav className="header-buttons">
            <Link to="/"><h1>Product Quest</h1></Link>

            {search}

            <nav className="login-signup">
              <button className="add-product" onClick={this.openModal}>  +  </button>
              <Link to="/" onClick={this.props.logout}>  Log Out  </Link>
            </nav>
            </nav>


            <Modal isOpen={this.state.modalIsOpen} shouldCloseOnOverlayClick={false}
              onRequestClose={this.closeModal}>
                <button className="float-x" onClick={this.closeModal}>X</button>
                <AddProductForm createProduct={this.props.createProduct}
                  errors={this.props.productErrors} closeModal={this.closeModal}/>
            </Modal>
          </hgroup>
        );
      } else {
        return (
          <hgroup className="header-group">

            <nav className="header-buttons">
            <Link to="/"><h1>Product Quest</h1></Link>

            {search}

            <nav className="login-signup2">
              <Link to="/login">Login</Link>
                &nbsp;or&nbsp;
              <Link to="/signup">Sign up!</Link>
              </nav>
            </nav>
          </hgroup>
        );
      }
    }
  }

export default withRouter(Header);
