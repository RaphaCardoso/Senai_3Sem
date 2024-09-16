import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import Primeiro from './src/Telas/Primeiro';
import Textos from './src/Components/Texto';
import Contadores from './src/Telas/Contadores';

export default function App() {
  return (
    <View>
      <Primeiro />
      <Textos />
      <Contadores />
      <StatusBar style="auto" />
    </View>
  );
}

