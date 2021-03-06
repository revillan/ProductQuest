import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { createProduct, requestProducts } from '../../actions/product_actions';
import { requestSearch } from '../../actions/search_actions';
import Header from './header';

const mapStateToProps = (state, ownProps) => ({
  currentUser: state.session.currentUser,
  productErrors: state.products.errors,
  location
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  createProduct: product => dispatch(createProduct(product)),
  requestProducts: (userId) => dispatch(requestProducts(userId)),
  requestSearch: query => dispatch(requestSearch(query))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
