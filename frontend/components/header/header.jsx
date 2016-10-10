import React from 'react';
import { Link, withRouter } from 'react-router';
import Modal from 'react-modal';
import AddProductForm from '../product/add_product_form';
// import SessionForm from '../session_form/session_form_container';
class Header extends React.Component {

  constructor() {
    super();
     this.customStyles = {
       overlay : {
         position          : 'fixed',
         top               : '0px',
         left              : 0,
         right             : 0,
         bottom            : 0,
         backgroundColor   : 'rgba(255, 255, 255, 0.75)'
         // position : 'static'
       },
       content : {
         position                   : 'absolute',
         top                        : '0px',
         left                       : '40px',
         right                      : '40px',
         bottom                     : '0px',
         // background                 : 'transparent',
         backgroundColor   : 'rgba(255, 255, 255, 0.0)',
         overflow                   : 'auto',
         WebkitOverflowScrolling    : 'touch',
         outline                    : 'none',
         border                     : 'none',
         padding                    : '20px'

       }

    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.login = false;
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

  autosearch(event) {
    let value = event.currentTarget.value;
    if (value === "") {
      value = null;
    }
    return ( this.props.requestSearch({query: value }) );
  }

    render() {
      let search;
      if (this.props.location.hash.slice(0,6) !== "#/user") {
         search = <input type="text" className="search-bar"
                placeholder="Discover your next favorite thing..."
                className="search-bar" onChange={(e) => this.autosearch(e)}/>;
      } else {
        search = <div></div>;
      }
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


            <Modal isOpen={this.state.modalIsOpen} shouldCloseOnOverlayClick={true}
              onRequestClose={this.closeModal} style={this.customStyles}>
                <button className="float-x" onClick={this.closeModal}>X</button>
                <AddProductForm createProduct={this.props.createProduct}
                  errors={this.props.productErrors}
                  requestProducts={this.props.requestProducts}
                  requestSearch={this.props.requestSearch}
                  closeModal={this.closeModal}
                  location={this.props.location}/>
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
              <div className="log-sign-space-L"><Link to="/login">Login</Link></div>

              <div className="log-sign-space-R"><Link to="/signup">Sign up</Link></div>
              </nav>
            </nav>
          </hgroup>
        );
      }
    }
  }

export default withRouter(Header);
