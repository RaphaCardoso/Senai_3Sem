import { useNavigation } from '@react-navigation/native'
import React from 'react'

import { View, Text, Button, StyleSheet } from 'react-native'
import Card from '../Components/Card';

export default function Home() {

    const navigation = useNavigation();

    return (
        <View style={estilos.container}>
            <Text style={estilos.tituloContato}>Seja bem venido</Text>
            <Card title="Sobre" content="Saiba mais sobre nossos serviços." buttonText="Ir para Sobre" onPress={() => navigation.navigate('Sobre')} />
            <Text style={estilos.tituloInfo}>More Info</Text>
            <Card title="Contato" content="Saiba mais sobre nossos serviços." buttonText="Ir para Sobre" onPress={() => navigation.navigate('Sobre')} />
            {/* <Button title="go to Contato" onPress={() => navigation.navigate('Contato')} /> */}
        </View>
    )
}

const estilos = StyleSheet.create({
    container: {
        padding: 20
    },
    tituloContato: {
        fontWeight: "bold",
        marginBottom: 20,
        textAlign: 'center',

    },
    tituloInfo: {
        fontWeight: 'bold',
        textAlign: 'center',
        fontSize: 20,
        marginTop: 20,
        marginBottom: 20
    }

});
