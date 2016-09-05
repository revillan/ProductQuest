import { ProfileConstants, receiveProfile } from '../actions/profile_actions';
import { fetchProfile } from '../util/profile_api_util';

export default ({ getState, dispatch }) => next => action => {
  switch (action.type) {
    case ProfileConstants.REQUEST_PROFILE:
      const success = profile => dispatch(receiveProfile(profile));
      fetchProfile(action.id, success);
      return next(action);
    default:
    return next(action);
  }
};
