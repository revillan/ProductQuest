import { ProductConstants,
        receiveProducts,
        receiveProduct,
        requestProducts,
        receiveProductErrors,
        receiveComment } from '../actions/product_actions';

import {  fetchProduct,
          fetchProducts,
          createProduct,
          createComment } from '../util/product_api_util';

export default ({ getState, dispatch }) => next => action => {
  switch(action.type){
    case ProductConstants.REQUEST_PRODUCTS:
      const successProducts = products => dispatch(receiveProducts(products));
      fetchProducts(action.userId, successProducts);
      return next(action);
    case ProductConstants.REQUEST_PRODUCT:
      const successProduct = product => dispatch(receiveProduct((product)));
      fetchProduct(action.id, successProduct);
      return next(action);
    case ProductConstants.CREATE_PRODUCT:
      const errorCallback = xhr => {
        const errors = xhr.responseJSON;
        dispatch(receiveProductErrors(errors));
      };
      const successCreate = () => dispatch(requestProducts());
      createProduct(action.product, successCreate , errorCallback);
      return next(action);
    case ProductConstants.CREATE_COMMENT:
      const successComment = comment => dispatch(receiveComment(comment));
      createComment(action.discussion, successComment);
      return next(action);
    default:
      return next(action);
  }
};
