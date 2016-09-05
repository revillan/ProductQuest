import { connect } from 'react-redux';
import { requestProfile } from '../../actions/profile_actions';
import Profile from './profile';

const mapStateToProps = (state) => ({
  profile: state.profile
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestProfile: () => dispatch(requestProfile( parseInt(ownProps.params.id)))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Profile);
