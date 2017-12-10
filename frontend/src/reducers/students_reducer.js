import * as StudentActions from '../actions/student_actions';

const StudentsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case StudentActions.RECEIVE_ALL_STUDENTS:
      return action.students.data;
    default:
      return state;
  }
};

export default StudentsReducer;
