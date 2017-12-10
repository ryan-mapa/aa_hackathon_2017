
import React, { Component } from 'react';
import { View, Text,TextInput, ActivityIndicator } from 'react-native';
import Button from 'react-native-button';
import _ from 'lodash';

class Login extends Component {
  constructor(props){
    super(props);
    this.state = {username:'', password: ''};
    this.loginExistingUser = this.loginExistingUser.bind(this);
  }

  update(field) {
     return e => this.setState({
       [field]: e.currentTarget.value,
     });
   }

  loginExistingUser(e) {
      e.preventDefault();
      console.log("login existing user");
      const user = this.state;
      this.props.login(user);
   }

   renderButton() {
     return (
       <Button
         style={{
           fontSize: 20,
           color: '#ffffff',
           backgroundColor: '#00cc00',
           padding: 20,
           marginTop: 10
         }}
         styleDisabled={{ color: 'red' }}
         onPress={this.loginExistingUser}
         >
         Login
       </Button>
     );
   }

   render() {
     return (
       <View style={styles.viewStyle}>
          <Text style={styles.title}>
            Task Academy
          </Text>
          <TextInput style={styles.inputStyle}
              onChangeText={text => this.setState({username: text})}
              placeholder="Username"/>

          <TextInput style={styles.inputStyle}
            onChangeText={text => this.setState({password: text})}
            placeholder="Password"
            secureTextEntry={true} />

         {this.renderButton()}
       </View>
     );
   }
 }

 const styles = {
   viewStyle: {
     marginTop: 30,
     padding: 10,
   },
   inputStyle: {
     margin: 10,
     padding: 20,
     borderStyle: 'solid',
     borderColor: 'black',
     borderWidth: 1
   },
   title: {
    fontFamily: 'PatuaOne-Regular',
    fontSize: 36,
    textAlign: 'center'
   }
  };

export default Login;
