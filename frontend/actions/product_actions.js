export const ProductConstants = {
  RECEIVE_PRODUCTS: "RECEIVE_PRODUCTS",
  RECEIVE_PRODUCT: "RECEIVE_PRODUCT",
  REQUEST_PRODUCTS: "REQUEST_PRODUCTS",
  REQUEST_PRODUCT: "REQUEST_PRODUCT",
  CREATE_PRODUCT: "CREATE_PRODUCT",
  RECEIVE_PRODUCT_ERRORS: "RECEIVE_PRODUCT_ERRORS",
  CREATE_COMMENT: "CREATE_COMMENT",
  RECEIVE_COMMENT: "RECEIVE_COMMENT"
};

export const receiveProducts = products => ({
  type: ProductConstants.RECEIVE_PRODUCTS,
  products
});

export const receiveProduct = product => ({
  type: ProductConstants.RECEIVE_PRODUCT,
  product
});

export const requestProducts = () => ({
  type: ProductConstants.REQUEST_PRODUCTS
});

export const requestProduct = id => ({
  type: ProductConstants.REQUEST_PRODUCT,
  id
});

export const createProduct = product => ({
  type: ProductConstants.CREATE_PRODUCT,
  product
});

export const receiveProductErrors = errors => ({
  type: ProductConstants.RECEIVE_PRODUCT_ERRORS,
  errors
});

export const createComment = discussion => ({
  type: ProductConstants.CREATE_COMMENT,
  discussion
});

export const receiveComment = (comment, productId) => ({
  type: ProductConstants.RECEIVE_COMMENT,
  comment,
  productId
});
