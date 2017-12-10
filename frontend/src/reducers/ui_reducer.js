import { combineReducers } from 'redux';
import ErrorsReducer from './errors_reducer';
import SessionReducer from './session_reducer';
import LoadingReducer from './loading_reducer';

const UIReducer = combineReducers({
  errors: ErrorsReducer,
  loading: LoadingReducer
});

export default UIReducer;
