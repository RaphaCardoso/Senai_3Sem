import React from 'react'

import { Text, View, StyleSheet } from 'react-native';

export default function Header() {
    return (
        <View style={estilos.topo}>
            <Text style={estilos.tituloHeader}>InfoSass</Text>
        </View>
    )
}

const estilos = StyleSheet.create({
    topo: {
        width: "100%",
        height: 100,
        backgroundColor: "black",
    },
    tituloHeader: {
        color: "white",
        width: "100%",
        textAlign: 'center',
        fontSize: 24,
        paddingTop: 30
    }
})