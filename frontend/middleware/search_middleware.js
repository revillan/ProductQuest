import { SearchConstants, requestSearch} from '../actions/search_actions';
import { receiveProducts } from '../actions/product_actions';
import { fetchSearch, fetchProducts } from '../util/product_api_util';

export default ({ getState, dispatch }) => next => action => {
  switch(action.type){
    case SearchConstants.REQUEST_SEARCH:
      const successProducts = products => dispatch(receiveProducts(products));
      if (action.query.query === null) {
        fetchProducts({userId: "all"}, successProducts);
      } else {
        fetchSearch(action.query, successProducts);
      }
      return next(action);
    default:
      return next(action);
  }
};
