import { connect } from 'react-redux';
import AppRouter from './router';
import { receiveErrors } from '../../actions/session_actions';

const mapStateToProps = state => ({
  currentUser: state.session.currentUser
});

// const mapDispatchToProps = dispatch => ({
//   receiveErrors: (errors) => dispatch(receiveErrors(errors))
// });

export default connect(
  mapStateToProps
  // mapDispatchToProps
)(AppRouter);
