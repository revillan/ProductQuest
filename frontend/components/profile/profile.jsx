import React from 'react';
import ProductIndex from '../product/product_index';
import Modal from 'react-modal';
import ProductDetail from '../product/product_detail';

class Profile extends React.Component {

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
        top               : 0,
        left              : 0,
        right             : 0,
        bottom            : 0,
        backgroundColor   : 'black'
      },
    };
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.state = {modalIsOpen: false, id: null };
  }

  componentDidMount() {
    this.props.requestProfile();
  }

  componentWillMount() {
    Modal.setAppElement('body');
    this.setState({modalIsOpen: false});
  }


  openModal(id) {
    this.setState({modalIsOpen: true, id: id});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    this.refs.subtitle.style.color = '#f00';
  }


    closeModal() {
      this.setState({modalIsOpen: false});
    }

  render() {
    let user = this.props.profile.profile;

    if (Object.keys(user).length === 0 ) {
      return <div></div>
    }

    return (
      <div>
        <main className="user-box">
          <main className="profile-content">
            <img src={user.image_url} alt={user.username}></img>
            <article className="profile-text">
              <h2>@{user.username}</h2>
              <h4>{user.title}</h4>
            </article>
          </main>
        </main>

        <div className="index-box">
          {
          Object.keys(user.products).map((productId) => (


            <div key={productId} className="product-item"
                onClick={this.openModal.bind(this, productId)}>
                <img src={user.products[productId].image_url}></img>
                <group className="product-item-words">
                  <h4 className="name-description">{user.products[productId].name}</h4>
                  <h6 className="name-description">{user.products[productId].description}</h6>
                </group>

                <group className="product-item-links">
                  <a className="hover-submit" href={user.products[productId].product_url}
                    target="_blank">Get Product</a>
                </group>
            </div>



            )
          )
        }

        <Modal isOpen={this.state.modalIsOpen}>
          <button className="float-x" onClick={this.closeModal}>X</button>
          <br/>
          <ProductDetail products={user.products} id={this.state.id}/>
        </Modal>


      </div>
    </div>
  );
  }
}

export default Profile;
