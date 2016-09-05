import React from 'react';

class ProductDetail extends React.Component {


  render() {
    let product = this.props.products[this.props.id];
    return (
      <div className="product-detail" background={product.image_url + ".png"} background-color="#333333">
        <img className="product-detail-img" src={product.image_url} alt={product.name} />
        <section className="product-details">
          <h2 className="details">{product.name}</h2>
          <h4 className="details">{product.description}</h4>
            <section className="product-buttons">

              <a className="submit" href={product.product_url} target="_blank">Get Product</a>
            </section>
          </section>
      </div>
    );
  }
}

              // {product.hunter_id}

export default ProductDetail;
