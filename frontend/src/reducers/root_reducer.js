import {combineReducers} from 'redux';
import EntitiesReducer from './entities_reducer';
import UIReducer from './ui_reducer';
import SessionReducer from './session_reducer';

const RootReducer = combineReducers({
  // entities: EntitiesReducer,
  session: SessionReducer,
  ui: UIReducer
});

export default RootReducer;
