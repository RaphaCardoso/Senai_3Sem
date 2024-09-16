import React, { useState, useEffect } from 'react'
import { Button, Text, View, StyleSheet } from 'react-native'

export default function Contadores() {

    const [count, setCount] = useState(0);
    const [msg, setMsg] = useState(' ');

    useEffect(() => {

        setMsg('O valor do count foi atualizado ' + count + ' vezes')

    }, [count]);

    return (
        <>
            <Text style={estilos.texto}>Você clicou aqui {count} </Text>
            <Text style={estilos.texto} > {msg} </Text>
            <View style={estilos.buttonList} >
                <Button onPress={() => {
                    setCount(count + 1)
                }} title="Clique Aqui!" />
            </View>
            <View style={estilos.buttonList}>
                <Button onPress={() => {
                    if (count < 1) {
                        setMsg('O valor não pode ser abaixo de 0')
                    } else {
                        setCount(count - 1)
                    }
                }} title='Diminuir' />
            </View>
        </>
    )
}

const estilos = StyleSheet.create({
    buttonList: {
        padding: 10,
    },
    texto: {
        color: "indigo",
        fontWeight: "bold",
        fontSize: 20,
        marginTop: 8,
        marginLeft: 20
    }

});
