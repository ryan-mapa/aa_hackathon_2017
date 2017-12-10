//DUMMY!!
import React from 'react';
import { Text, View } from 'react-native'

class Me extends React.Component {
  constructor(props){
    super(props)
    
    console.log(props)
  }
  
  render() {
    return (
      <View style={styles.viewStyle}>
        <Text>HELLO</Text>
      </View>
    )
  }
}

const styles = {
  viewStyle: {
    marginTop: 30,
    padding: 10,
  }
}
export default Me