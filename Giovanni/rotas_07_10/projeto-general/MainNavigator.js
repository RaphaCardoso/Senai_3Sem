import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack'

import React from 'react'
import Home from './src/Pages/Home';
import Sobre from './src/Pages/Sobre';
import Contato from './src/Pages/Contato';
import Sac from './src/Pages/sac'

const Stack = createNativeStackNavigator();

export default function MainNavigator() {
    return (
        <NavigationContainer>
            <Stack.Navigator>
                <Stack.Screen name="Home" component={Home} options={{ headerShown: false }} />
                <Stack.Screen name="Sobre" component={Sobre} />
                <Stack.Screen name="Sac" component={Sac} />
                <Stack.Screen name="Contato" component={Contato} />
            </Stack.Navigator>
        </NavigationContainer>
    )
}
