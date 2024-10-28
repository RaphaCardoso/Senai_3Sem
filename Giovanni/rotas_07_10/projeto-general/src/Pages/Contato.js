import React, { useState } from 'react';
import { View, Text, TextInput, StyleSheet, Alert, Button } from 'react-native';
import axios from 'axios';

export default function Contato() {

    const { nome, setNome } = useState('');

    const { telefone, setTelefone } = useState('');

    const enviarContato = async () => {
        if (!nome || !telefone) {
            Alert.alert("Erro, Por favor preencha todos os campos!")
            return;
        };

        const novoContato = { nome, telefone };

        axios.post('http://10.0.2.2:3000/contatos', novoContato).then(resposta => {
            if (resposta.status === 201) {
                Alert.alert('Contato adicionado com sucesso!');
                setNome('');
                setTelefone('');
            } else {
                Alert.alert("Erro. Falha ao adicionar o contato!")
            }
        });

    }


    return (
        <View style={style.container}>
            <Text style={style.label}>Nome:</Text>
            <TextInput style={style.input} placeholder='Digite o nome' value={nome} onChangeText={setNome} />

            <Text style={style.label}>Telefone:</Text>
            <TextInput style={style.input} placeholder='Digite o telefone' value={telefone} onChangeText={setTelefone} />

            <Button title="Enviar contato" onPress={enviarContato} />
        </View>
    )
}

const style = StyleSheet.create({

    container: {
        padding: 20,

    },

    label: {
        fontSize: 18,
        marginBottom: 5
    },

    input: {
        borderWidth: 1,
        borderColor: "black",
        padding: 10,
        marginBottom: 20,
        borderRadius: 5
    }

});