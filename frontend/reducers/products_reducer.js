import merge from 'lodash/merge';
import { ProductConstants } from '../actions/product_actions';

const _defaultProducts = Object.freeze({
  products: {},
  errors: []
});

const ProductsReducer = function (state = _defaultProducts, action) {
  let products;
  switch(action.type){
    case ProductConstants.RECEIVE_PRODUCT:
      products = action.product;
      return merge({}, _defaultProducts, { products });
    case ProductConstants.RECEIVE_PRODUCTS:
      products = action.products;
      return merge({}, _defaultProducts, { products });
    case ProductConstants.RECEIVE_PRODUCT_ERRORS:
      const errors = action.errors;
      return merge({}, state, { errors });
    default:
      return state;
  }

};



export default ProductsReducer;
