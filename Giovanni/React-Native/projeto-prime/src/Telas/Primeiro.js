import React from 'react'
import { StyleSheet, Text, View, ScrollView } from 'react-native';

export default function Primeiro() {
    return (
        <>
            <ScrollView>
                <View style={estilos.topo}>
                    <Text style={estilos.tituloTopo}> Detalhes do Sistema</Text>
                </View>
                <View style={estilos.listaDescricao}>
                    <Text style={estilos.nomeLista}> Lista de Compra</Text>
                </View>
                <View>
                    <Text style={estilos.descricao}>
                        Lorem Ipsum is simply dummy text of the printing and typesetting
                        industry. Lorem Ipsum has been the industry's standard dummy text ever
                        since the 1500s, when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book.
                    </Text>
                </View >
                <View style={estilos.box}>
                    <Text style={estilos.preco}>
                        R$ 50,00
                    </Text>
                </View>
            </ScrollView>
        </>
    )
}

const estilos = StyleSheet.create({
    topo: {
        width: "100%",
        height: 150,
        backgroundColor: "blue",
    },
    tituloTopo: {
        width: "100%",
        textAlign: "center",
        paddingTop: 80,
        fontSize: 20,
        color: "white",
        fontWeight: "bold",
    },
    listaDescricao: {
        paddingTop: 20,
        fontSize: 15,
        marginLeft: 20
    },
    nomeLista: {
        fontWeight: "bold"
    },
    descricao: {
        paddingTop: 20,
        color: "#000000",
        marginLeft: 20,
        fontSize: 16,
        lineHeight: 26
    },
    preco: {
        color: "green",
        fontSize: 20,
        fontWeight: "bold",
        marginLeft: 20,
        marginTop: 8,
    },
    box: {
        width: 150,
        height: 150,
        borderWidth: 2,
        borderColor: "red",
        borderStyle: "solid",
        padding: 5,
        display: "flex",
        justifyContent: "center",
        alignContent: "center",
        marginLeft: "35%"
    }
});