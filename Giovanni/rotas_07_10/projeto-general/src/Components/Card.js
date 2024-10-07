import React from 'react'

import { View, Text, Button, StyleSheet } from 'react-native'

export default function Card(props) {
    return (
        <View style={estilos.card}>
            <Text style={estilos.cardTitle}>{props.title}</Text>
            <Text style={estilos.cardContent}>{props.content}</Text>
            <Button title={props.buttonText} onPress={props.onPress} />
        </View>
    )
}

const estilos = StyleSheet.create({
    card: {
        // backgroundColor: "blueviolet",
        borderRadius: 10,
        padding: 15,
        marginBottom: 10,
        elevation: 3, //sombra para android
        shadowColor: "black", // sombra para IOS,
        shadowOpacity: 0.2,
        shadowRadius: 1.41
    },
    cardTitle: {
        fontSize: 18,
        fontWeight: 'bold',
        marginBottom: 10
    },
    cardContent: {
        fontSize: 14,
        marginBottom: 10
    }
})
