import React from 'react';
import { connect } from 'react-redux';

import { Text, View} from 'react-native';
import Dashboard from './students/dashboard.js';
import LoginContainer from './login_container.js';

class Entry extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const newPage = this.props.session.currentUser ? <Dashboard currentUser={this.props.currentUser}/> : <LoginContainer />;
    return(
      <View style={styles.container}>{newPage}</View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1
  }
});

const mapStateToProps = (state) => {
  return({
    session: state.session
  });
};


export default connect(mapStateToProps, null)(Entry);