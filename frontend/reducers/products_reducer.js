import merge from 'lodash/merge';
import { ProductConstants } from '../actions/product_actions';
// import { SearchConstants } from '../actions/search_actions';

const _defaultProducts = Object.freeze({
  products: {},
  errors: []
});

const ProductsReducer = function (state = _defaultProducts, action) {
  let products;
  switch(action.type){
    case ProductConstants.RECEIVE_PRODUCT:
      let product = action.product;
      if (product["comments"] === undefined) {
        product["comments"] = {};
      }
      products = merge({}, state.products,  {[product.id]: product });
      return merge({}, _defaultProducts, { products });
    case ProductConstants.RECEIVE_PRODUCTS:
      products = action.products;
      return merge({}, _defaultProducts, { products });
    case ProductConstants.RECEIVE_PRODUCT_ERRORS:
      const errors = action.errors;
      return merge({}, state, { errors });
    case ProductConstants.RECEIVE_COMMENT:
      let newState = merge({}, state);
      // debugger
      let commentId = Object.keys(action.comment)[0];
      let productId = action.comment[commentId].product_id;
      newState.products[productId].comments[commentId] = action.comment[commentId];
      return newState;
    default:
      return state;
  }

};

export default ProductsReducer;
