import React from 'react';
import Discussion from '../discussion/discussion';
import { Link, withRouter } from 'react-router';


class ProductDetail extends React.Component {

  render() {
    let product = this.props.products[this.props.id];
    let discuss;

    if (product.comments !== undefined) {
      discuss = <Discussion comments={ product.comments }
        currentUser={this.props.currentUser}
        createComment={this.props.createComment}
        closeModal={this.props.closeModal}
        requestProfile={this.props.requestProfile}
        location={this.props.location}
        requestProducts={this.props.requestProducts}
        productId={parseInt(this.props.id)}/>;
    } else {
      discuss = <div>On a comment quest...</div>;
    }

    return (
      <div className="product-detail">
        <img className="product-detail-img"
          src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,w_200,h_200/${product.image_url}`}
          alt={product.name} />
        <section className="product-details">
          <h2 className="details">{product.name}</h2>
          <h4 className="details">{product.description}</h4>
            <section className="product-buttons">

              <a className="submit" href={product.product_url} target="_blank">Get Product</a>


              <div className="submitter"> Submitted by
                <Link to={`/users/${product.hunter_id}`} onClick={this.props.closeModal}>
                  <img className="small hover-submit small"
                    src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/g_face,w_50,h_50,c_thumb/${product.hunter_img}.jpg`}
                    alt={product.hunter}/>
                </Link>
                </div>
            </section>
          </section>

          <div className="Discussion">{discuss}</div>

      </div>
    );
  }
}

export default withRouter(ProductDetail);
