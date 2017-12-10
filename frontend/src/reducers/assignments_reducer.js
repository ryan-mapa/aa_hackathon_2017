import * as AssignmentActions from '../actions/assignment_actions';

const AssignmentsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case AssignmentActions.RECEIVE_ALL_ASSIGNMENTS:
      return action.assignments.data;
    case AssignmentActions.RECEIVE_ASSIGNMENT:
      return Object.assign({}, state, {[action.assignment.data.id]: action.assignment.data});
    default:
      return state;
  }
};

export default AssignmentsReducer;
