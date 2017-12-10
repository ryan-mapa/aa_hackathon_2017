import React, { Component } from 'react';
import { View } from 'react-native';
import { createStore, applyMiddleware } from 'redux';
import { logger } from 'redux-logger';
import { Provider } from 'react-redux';
import thunk from 'redux-thunk';
import RootReducer from './src/reducers/root_reducer';
import LoginContainer from './src/components/login_container';

class App extends Component {
  render() {
    return (
      <Provider store={createStore(RootReducer, {}, applyMiddleware(thunk, logger))}>
        <View>
          <LoginContainer/>
        </View>
      </Provider>
    );
  }
}

export default App;