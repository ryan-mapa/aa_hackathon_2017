import {combineReducers} from 'redux';
import StudentsReducer from './StudentsReducer'
import ClassroomsReducer from './ClassroomsReducer'
import GroupsReducer from './GroupsReducer'
import AssignmentsReducer from './AssignmentsReducer'

const EntitiesReducer = combineReducers({
  students: StudentsReducer,
  classrooms: ClassroomsReducer,
  groups: GroupsReducer,
  assignments: AssignmentsReducer
})

export default EntitiesReducer;
