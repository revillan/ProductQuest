import { applyMiddleware } from 'redux';
import SessionMiddleware from './session_middleware';
import ProductMiddleware from './product_middleware';
import ProfileMiddleware from './profile_middleware';

const RootMiddleware = applyMiddleware(
  SessionMiddleware,
  ProductMiddleware,
  ProfileMiddleware
);

export default RootMiddleware;
