import React from 'react';
import { TabNavigator } from 'react-navigation';

const Dashboard = TabNavigator(
  {
  Me: {screen: Me},
  myGroup: {screen: Locations},
  myClass: {screen: Maps}
  }
);

export default Dashboard;