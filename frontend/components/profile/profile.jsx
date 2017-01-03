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

    this.state = {modalIsOpen: false, id: null };

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
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
    let user = this.props.profile;

    if (Object.keys(user).length === 0 ) {
      return <div></div>
    }

    return (
      <div>
        <main className="user-box">
          <main className="profile-content">
            <img src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,g_face,w_150,h_150/${user.image_url}.jpg`}
               alt={user.username}></img>
            <article className="profile-text">
              <h2>{user.name}</h2>
              <h4>@{user.username}, #{user.id}</h4>
              <h4>{user.title}</h4>
            </article>
          </main>
        </main>


    </div>
  );
  }
}

export default Profile;
