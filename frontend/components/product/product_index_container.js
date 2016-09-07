import { connect } from 'react-redux';
import { requestProducts,
          requestProduct,
          createProduct,
          createComment } from '../../actions/product_actions';
import { requestProfile } from '../../actions/profile_actions';

import ProductIndex from './product_index';

const mapStateToProps = state => ({
  products: state.products.products,
  errors: state.products.errors,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = dispatch => ({
  requestProducts: () => dispatch(requestProducts()),
  requestProduct: id => dispatch(requestProduct(id)),
  createProduct: product => dispatch(createProduct(product)),
  requestProfile: (id) => dispatch(requestProfile(id)),
  createComment: (comment) => dispatch(createComment(comment))
});


export default connect (
  mapStateToProps,
  mapDispatchToProps
)(ProductIndex);
