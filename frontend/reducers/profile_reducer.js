import merge from 'lodash/merge';
import { ProfileConstants } from '../actions/profile_actions';

const _defaultProfiles = Object.freeze({
  profile: {}
});

const ProfileReducer = function (state = _defaultProfiles, action) {
  let products;
  let profile;
  switch (action.type){
    case ProfileConstants.RECEIVE_PROFILE:
    profile = action.profile;
    return merge( {}, _defaultProfiles, { profile });

    default:
      return state;
  }
};

export default ProfileReducer;
