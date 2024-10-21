import { StatusBar } from 'expo-status-bar';
import { Text, View } from 'react-native';
import MainNavigator from './MainNavigator';
import Header from './src/Components/Header';
import Sac from './src/Pages/sac';

export default function App() {
  return (
    <>
      <Header />
      {/* <MainNavigator />  */}
      <Sac />
    </>
  );
}

