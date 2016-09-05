import React from 'react';
import ProductIndex from '../product/product_index';

class Profile extends React.Component {

  componentDidMount() {
    this.props.requestProfile();
  }

  render() {
    let user = this.props.profile.profile;

    if (Object.keys(user).length === 0 ) {
      return <div></div>
    }
    debugger
    return (
      <div>
        <main>
          <img src={user.image_url} alt={user.username}></img>
          <article>
            <h2>@{user.username}</h2>
            <h4>{user.title}</h4>
          </article>
        </main>

        <div className="index-box">
          {
          Object.keys(user.products).map((productId) => (
             (
              <div key={productId} className="product-item">
                  <img src="assets/slack-logo"></img>
                  <group className="product-item-words">
                    <h4 className="name-description">{user.products[productId].name}</h4>
                    <h6 className="name-description">{user.products[productId].description}</h6>
                  </group>

                  <a className="hover-submit" href={user.products[productId].product_url}
                    target="_blank">Get Product</a>
              </div>
            )
          ))
        }

      </div>
    </div>
  );
  }
}

export default Profile;
