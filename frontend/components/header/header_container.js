import { connect } from 'react-redux';
import { logout } from '../../actions/session_actions';
import { createProduct } from '../../actions/product_actions';
import Header from './header';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser,
  productErrors: state.products.errors
});

const mapDispatchToProps = dispatch => ({
  logout: () => dispatch(logout()),
  createProduct: product => dispatch(createProduct(product))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Header);
