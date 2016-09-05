export const ProfileConstants = {
  REQUEST_PROFILE: "REQUEST_PROFILE",
  RECEIVE_PROFILE: "RECEIVE_PROFILE"
};

export const requestProfile = (id) => ({
  type: ProfileConstants.REQUEST_PROFILE,
  id
});

export const receiveProfile = profile => ({
  type: ProfileConstants.RECEIVE_PROFILE,
  profile
});
