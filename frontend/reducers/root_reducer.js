import react from 'react';
import { combineReducers } from 'redux';
import SessionReducer from './session_reducer';
import ProductsReducer from './products_reducer';
import ProfileReducer from './profile_reducer';

const RootReducer = combineReducers({
  session: SessionReducer,
  products: ProductsReducer,
  profile: ProfileReducer
});

export default RootReducer;
