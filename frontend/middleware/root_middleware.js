import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import ProductMiddleware from './product_middleware';
import ProfileMiddleware from './profile_middleware';
import SearchMiddleware from './search_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  ProductMiddleware,
  ProfileMiddleware,
  SearchMiddleware
);

export default RootMiddleware;
