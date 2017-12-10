import React from 'react';
import { StackNavigator } from 'react-navigation';
import Main from '../components/main/main';
import Classroom from '../components/classroom';
import Assignments from '../components/assignments';

const TeacherRouters = StackNavigator(
  {
  Main: {screen: Main},
  Classroom: {screen: Classroom},
  Assignments: {screen: Assignments}
  }
);

export default TeacherRouters;
