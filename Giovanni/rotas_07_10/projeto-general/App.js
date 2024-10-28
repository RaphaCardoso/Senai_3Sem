import { StatusBar } from 'expo-status-bar';
import { Text, View } from 'react-native';
import MainNavigator from './MainNavigator';
import Header from './src/Components/Header';
import Sac from './src/Pages/sac';
import Sobre from './src/Pages/Sobre';
import Contato from './src/Pages/Contato';
import Home from './src/Pages/Home';

export default function App() {
  return (
    <>
      <Header />
      <MainNavigator /> 
    </>
  );
}

