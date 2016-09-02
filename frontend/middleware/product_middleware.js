import { ProductConstants,
        receiveProducts,
        receiveProduct,
      receiveProductErrors } from '../actions/product_actions';
import { fetchProduct, fetchProducts, createProduct } from '../util/product_api_util';

export default ({ getState, dispatch }) => next => action => {
  switch(action.type){
    case ProductConstants.REQUEST_PRODUCTS:
      const successProducts = products => dispatch(receiveProducts(products));
      fetchProducts(successProducts);
      return next(action);
    case ProductConstants.REQUEST_PRODUCT:
      // debugger
      const successProduct = product => dispatch(receiveProduct((product)));
      fetchProduct(action.id, successProduct);
      return next(action);
    case ProductConstants.CREATE_PRODUCT:
      const errorCallback = xhr => {
        const errors = xhr.responseJSON;
        dispatch(receiveProductErrors(errors));
      };
      const successCreate = product => dispatch(receiveProduct((product)));
      createProduct(action.product, successCreate , errorCallback);
      return next(action);
    default:
      return next(action);
  }
};
