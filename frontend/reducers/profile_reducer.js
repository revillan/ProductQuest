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
    products = profile.products;
    let prod_id = Object.keys(products);
    prod_id.forEach((id) => {
        if (products[id]["comments"] === undefined) {
          products[id]["comments"] = {};
        }
      });
    return merge( {}, _defaultProfiles, { profile });

    default:
      return state;
  }
};

export default ProfileReducer;
