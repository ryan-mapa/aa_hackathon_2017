import { connect } from 'react-redux';
import { login } from '../actions/session_actions';

import Login from './login';

const mapStateToProps = state => ({
  'test' :[]
});

const mapDispatchToProps = dispatch => ({
  login: user => dispatch(login(user))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Login);
