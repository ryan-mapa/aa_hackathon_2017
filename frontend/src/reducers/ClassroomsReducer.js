import * from ClassroomActions from '../actions/ClassroomActions'

const ClassroomsReducer = (state = {}, action) => {
  Object.freeze(state);
  
  switch (action.type) {
    case ClassroomActions.RECEIVE_CLASS:
      return Object.assign({}, state, {[action.class.data.id]: action.class.data})
    default:
      return state;
  }
}

export default ClassroomsReducer;