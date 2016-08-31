import React from 'react';
import { Provider } from 'react-redux';
import AppRouter from './router/router_container';

export const Root = ({ store }) => (
  <Provider store={store}>
    <AppRouter/>
  </Provider>
);
