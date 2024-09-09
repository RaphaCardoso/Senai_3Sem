import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import Primeiro from './src/Telas/Primeiro';

export default function App() {
  return (
    <View>
      <Primeiro />
      <StatusBar style="auto" />
    </View>
  );
}
