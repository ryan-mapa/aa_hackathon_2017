import {combineReducers} from 'redux';
import EntitiesReducer from './EntitiesReducer'
import UIReducer from './UIReducer'

const RootReducer = combineReducers({
  entities: EntitiesReducer,
  ui: UIReducer
});

export default RootReducer;