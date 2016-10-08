import React from 'react';
import Modal from 'react-modal';
import Infinite from 'react-infinite';
import { Link, withRouter } from 'react-router';

import ProductDetail from './product_detail';

class ProductIndex extends React.Component {

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
    this.state = {modalIsOpen: false, id: null, loading: true, count: 0 };
  }

  componentWillMount() {
    Modal.setAppElement('body');
    this.setState({modalIsOpen: false});
    if (this.props.location.hash.slice(0,7) !== "#/users") {
      this.props.requestSearch({query: null });
    } else {
      this.props.requestProducts({ userId: this.props.location.hash.slice(8,10).replace('?','') });
    }
  }


  openModal(id) {
    // debugger
    this.props.requestProduct(id);
    this.setState({modalIsOpen: true, id: id});
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

  componentDidMount(){
    this.setState({loading: false});
    if (this.props.location.hash.slice(0,7) !== "#/users") {
      this.props.requestProducts({ userId: "all" });
    } else {
      this.props.requestProducts({ userId: this.props.location.hash.slice(8,10).replace('?','') });
    }
  }

  componentDidMount() {
      this.setState({loading: false});
      this.setState({count: 3});
  }

  shouldComponentUpdate(nextProps, nextState){
    console.log("asks?");
    if (nextState.loading === false && this.state.count < 2) {
      this.setState({count: 3});
      return false;
    } else {
      return true;
    }
  }

  render() {
    if (Object.keys(this.props.products).length === 0 && this.state.loading === true) {
      console.log(this.state.loading);
      return ( <div className="loading">
          <text className="loading-text">On a product quest...</text>
        </div>
        );
    } else if (Object.keys(this.props.products).length === 0) {
      return (<div className="loading">
          <text className="loading-text">No matching results...</text>
        </div>);
    }


    // <Infinite useWindowAsScrollContainer={true} elementHeight={130}
    //   timeScrollStateLastsForAfterUserScrolls={500}>
    return (
      <div className="product-index-container">
        <div className="index-box">
          {
          Object.keys(this.props.products).map((productId) => (
             (
              <div key={productId} className="product-item"
                  onClick={this.openModal.bind(this, productId)}>
                  <img src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,w_100,h_100/${this.props.products[productId].image_url}`}></img>
                  <group className="product-item-words">
                    <h4 className="name-description">{this.props.products[productId].name}</h4>
                    <h6 className="name-description">{this.props.products[productId].description}</h6>
                  </group>

                  <group className="product-item-links">
                      <Link to={`/users/${this.props.products[productId].hunter_id}`}>
                        <img className="small hover-submit small"
                          src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/g_face,w_50,h_50,c_thumb/${this.props.products[productId].hunter_img}.jpg`}
                          alt={this.props.products[productId].hunter}/>
                      </Link>
                    <a className="hover-submit" href={this.props.products[productId].product_url}
                      target="_blank" onClick={() => window.setTimeout(this.closeModal, 0)}>Get Product</a>
                  </group>
              </div>
            )
          ))
        }
        </div>


        <Modal isOpen={this.state.modalIsOpen} style={this.customStyles}
          shouldCloseOnOverlayClick={true} onRequestClose={this.closeModal}>
          <button className="float-x" onClick={this.closeModal}>X</button>
          <br/>

          <ProductDetail products={this.props.products} id={this.state.id} closeModal={this.closeModal}
             currentUser={this.props.currentUser} createComment={this.props.createComment}
             requestProfile={this.props.requestProfile} location={this.props.location}
             requestProducts={this.props.requestProducts}/>
        </Modal>

      </div>
    );
  }

}

  export default withRouter(ProductIndex);
