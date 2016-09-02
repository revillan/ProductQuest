export const fetchProducts = (success) => {
  $.ajax({
    method: 'GET',
    url: 'api/products',
    success,
  });
};

export const fetchProduct = (id, success) => {
  console.log(id);
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
