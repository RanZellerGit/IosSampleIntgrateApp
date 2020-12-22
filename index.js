import React from 'react';
import { AppRegistry, StyleSheet, Text, View } from 'react-native';

import { NativeModules, NativeEventEmitter } from 'react-native';
const { EventSenderManager, CallbackManager } = NativeModules;

const eventSenderManagerEmitter = new NativeEventEmitter(EventSenderManager);

const subscription = eventSenderManagerEmitter.addListener(
  'runJSCode',
  (param) => {
    console.log(
      'this code run in the React native',
      `param form native`,
      param
    );
    CallbackManager.calledFromJS('data from JS');
  }
);

class HelloWorld extends React.Component {
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.textStyle}>This is react-native View</Text>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#FFFFFF',
  },
  textStyle: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
});

AppRegistry.registerComponent('IosSampleIntgrateApp', () => HelloWorld);
