import { connect } from 'react-redux';
import { requestProfile } from '../../actions/profile_actions';
import Profile from './profile';

const mapStateToProps = (state) => ({
  profile: state.profile,
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestProfile: () => dispatch(requestProfile( parseInt(ownProps.params.id))),
  createComment: (comment) => dispatch(createComment(comment))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Profile);
