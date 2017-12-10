import React from 'react';
import { connect } from 'react-redux';
import { Root } from '../config/router';
import { Text, View} from 'react-native';
import Dashboard from './students/dashboard';
import LoginContainer from './auth/login';

class Entry extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const newPage = this.props.session.currentUser ? <Dashboard /> : <LoginContainer />;
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