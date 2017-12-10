import {combineReducers} from 'redux';
import StudentsReducer from './students_reducer';
import ClassroomsReducer from './classrooms_reducer';
import GroupsReducer from './groups_reducer';
import AssignmentsReducer from './assignments_reducer';

const EntitiesReducer = combineReducers({
  students: StudentsReducer,
  classrooms: ClassroomsReducer,
  groups: GroupsReducer,
  assignments: AssignmentsReducer
});

export default EntitiesReducer;
