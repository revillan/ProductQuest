import merge from 'lodash/merge';
import { ProfileConstants } from '../actions/profile_actions';

const ProfileReducer = function (state = {}, action) {
  let products, profile;
  switch (action.type){
    case ProfileConstants.RECEIVE_PROFILE:
    profile = action.profile;
    products = profile.products;
    return merge( {},  profile );

    default:
      return state;
  }
};

export default ProfileReducer;
