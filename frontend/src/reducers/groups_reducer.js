import * as GroupActions from '../actions/GroupActions';

const GroupsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case GroupActions.RECEIVE_ALL_GROUPS:
      return action.groups.data;
    case GroupActions.RECEIVE_GROUP:
      return Object.assign({}, state, {[action.group.data.id]: action.group.data});
    default:
      return state;
  }
};

export default GroupsReducer;
