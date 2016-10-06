export const fetchProducts = (userId, success) => {
  $.ajax({
    method: 'GET',
    url: 'api/products',
    data: userId,
    success,
  });
};

export const fetchProduct = (id, success) => {
  $.ajax({
    method: 'GET',
    url: 'api/products/'+id,
    success
  });
};

export const createProduct = (product, success, error) => {
  $.ajax({
    method: 'POST',
    url: 'api/products',
    data: product,
    success,
    error
  });
};

export const createComment = (discussion, success) => {
  $.ajax({
    method: 'POST',
    url: 'api/discussions',
    data: discussion,
    success
  });
};

export const fetchSearch = (query, success) => {
  $.ajax({
    method: 'GET',
    url: 'api/products',
    data: query,
    success
  });
};
