import { StatusBar } from 'expo-status-bar';
import { ScrollView, StyleSheet, Text, View } from 'react-native';
import Primeiro from './src/Telas/Primeiro';
import Textos from './src/Components/Texto';
import Contadores from './src/Telas/Contadores';
import CardNews from './src/Components/cadNews';

export default function App() {
  return (
    <ScrollView>
      {/* <Primeiro />
      <Textos />
      <Contadores /> */}
      <CardNews />
      <StatusBar style="auto" />
    </ScrollView>
  );
}

