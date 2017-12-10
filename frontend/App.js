import React, { Component } from 'react';
import { View } from 'react-native';
import { createStore, applyMiddleware } from 'redux';
import { logger } from 'redux-logger';
import { Provider } from 'react-redux';
import thunk from 'redux-thunk';
import RootReducer from './src/reducers/RootReducer';
import LoginForm from './src/components/LoginForm';

class App extends Component {
  render() {
    return (
      <Provider store={createStore(RootReducer, {}, applyMiddleware(thunk, logger))}>
        <View>
          <LoginForm />
        </View>
      </Provider>
    );
  }
}

export default App;



// 
// 
// 


