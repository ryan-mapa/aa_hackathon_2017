import React from 'react';
import { TabNavigator } from 'react-navigation';
import Group from './group.js'

const Dashboard = TabNavigator(
  {
  Group: {screen: Group},
  // myGroup: {screen: Locations},
  // myClass: {screen: Maps}
  }
);

export default Dashboard;