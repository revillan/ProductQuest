import { connect } from 'react-redux';
import { requestProducts,
          requestProduct,
          createProduct } from '../../actions/product_actions';
import ProductIndex from './product_index';

const mapStateToProps = state => ({
  products: state.products.products,
  errors: state.products.errors
});

const mapDispatchToProps = dispatch => ({
  requestProducts: () => dispatch(requestProducts()),
  requestProduct: id => dispatch(requestProduct(id)),
  createProduct: product => dispatch(createProduct(product))
});


export default connect (
  mapStateToProps,
  mapDispatchToProps
)(ProductIndex);
