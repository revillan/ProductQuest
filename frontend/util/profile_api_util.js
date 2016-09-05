export const fetchProfile = (id, success) => {
  $.ajax({
    method: 'GET',
    url: 'api/users/'+id,
    success
  });
};
