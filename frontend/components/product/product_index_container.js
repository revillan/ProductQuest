import { connect } from 'react-redux';
import { requestProducts,
          requestProduct,
          createProduct,
          createComment } from '../../actions/product_actions';
import { requestSearch } from '../../actions/search_actions';
import { requestProfile } from '../../actions/profile_actions';

import ProductIndex from './product_index';

const mapStateToProps = (state, ownProps) => ({
  products: state.products.products,
  errors: state.products.errors,
  currentUser: state.session.currentUser,
  location
});

const mapDispatchToProps = dispatch => ({
  requestProducts: (userId) => dispatch(requestProducts(userId)),
  requestProduct: id => dispatch(requestProduct(id)),
  requestSearch: query => dispatch(requestSearch(query)),
  createProduct: product => dispatch(createProduct(product)),
  requestProfile: (id) => dispatch(requestProfile(id)),
  createComment: (comment) => dispatch(createComment(comment))
});


export default connect (
  mapStateToProps,
  mapDispatchToProps
)(ProductIndex);
