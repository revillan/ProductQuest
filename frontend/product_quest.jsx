import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import { Root } from './components/root';
import Modal from 'react-modal';

document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById('root');
  Modal.setAppElement(document.body);
  let store;
  if (window.currentUser) {
    const initialState = {session: {currentUser: window.currentUser}};
    store = window.store = configureStore(initialState);
  } else {
    store = window.store = configureStore();
  }
  ReactDOM.render(<Root store={store}/>, root);
});
