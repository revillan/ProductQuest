import React from 'react';
import Discussion from '../discussion/discussion';

class ProductDetail extends React.Component {

  render() {
    let product = this.props.products[this.props.id];
    let discuss;

    debugger

    if (product.comments !== undefined) {
      discuss = <Discussion comments={ product.comments }
        currentUser={this.props.currentUser}
        createComment={this.props.createComment}
        productId={parseInt(this.props.id)}/>;
    } else {
      discuss = <div></div>;
    }

    return (
      <div className="product-detail">
        <img className="product-detail-img"
          src={`http://res.cloudinary.com/dbyy6mrbe/image/upload/c_thumb,w_200,h_200/${product.image_url}.jpg`}
          alt={product.name} />
        <section className="product-details">
          <h2 className="details">{product.name}</h2>
          <h4 className="details">{product.description}</h4>
            <section className="product-buttons">

              <a className="submit" href={product.product_url} target="_blank">Get Product</a>
            </section>
          </section>

          <div>{discuss}</div>

      </div>
    );
  }
}

              // {product.hunter_id}

export default ProductDetail;
