import React from 'react';
import { TabNavigator } from 'react-navigation';
import Me from './me.js'

const Dashboard = TabNavigator(
  {
  myGroup: {screen: Me},
  // myGroup: {screen: Locations},
  // myClass: {screen: Maps}
  }
);

export default Dashboard;