  import React from 'react';
import Modal from 'react-modal';
import { Link, withRouter } from 'react-router';

import ProductDetail from './product_detail';

class ProductIndex extends React.Component {

  constructor() {
    super();
     this.customStyles = {
      content : {
        top                   : '50%',
        left                  : '15%',
        right                 : 'auto',
        bottom                : 'auto',
        marginRight           : '-50%',
        transform             : 'translate(-50%, -50%)'

      },
      overlay : {
        position          : 'fixed',
        top               : 0,
        left              : 0,
        right             : 0,
        bottom            : 0,
        backgroundColor   : 'rgb(100,100,100,0.5)'
      },
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.state = {modalIsOpen: false, id: null };
  }

  componentWillMount() {
    Modal.setAppElement('body');
    this.setState({modalIsOpen: false});
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
    this.props.requestProducts();
  }

  render() {
    if (Object.keys(this.props.products).length === 0) {
      return ( <div className="loading">
          <text className="loading-text">On a product quest...</text>
        </div>
        );
    }

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
                      target="_blank">Get Product</a>
                  </group>
              </div>
            )
          ))
        }
        </div>


        <Modal isOpen={this.state.modalIsOpen}>
          <button className="float-x" onClick={this.closeModal}>X</button>
          <br/>
          <ProductDetail products={this.props.products} id={this.state.id}
             currentUser={this.props.currentUser} createComment={this.props.createComment}/>
        </Modal>

      </div>
    );
  }

}

  export default withRouter(ProductIndex);
