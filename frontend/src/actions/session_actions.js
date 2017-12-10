import * as ApiUtil from '../utils/session_api_utils';

export const RECEIVE_CURRENT_USER = "RECEIVE_CURRENT_USER";
export const RECEIVE_SESSION_ERRORS = "RECEIVE_SESSION_ERRORS";


export const login = user => dispatch => {
  console.log("inside login function");
  
  return ApiUtil.login(user).then(user => dispatch(receiveCurrentUser(user)),
  (error) => dispatch(receiveErrors(error.responseJSON)));
};

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors
});
