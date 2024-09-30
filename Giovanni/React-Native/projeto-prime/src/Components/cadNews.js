import React, { useState } from 'react'

import { View, Text, TextInput, StyleSheet, Button } from 'react-native'

export default function cadNews() {

    const [nome, setNome] = useState('');
    const [email, setEmail] = useState('');
    const [senha, setSenha] = useState('');
    const [telefone, setTelefone] = useState('');
    const [idade, setIdade] = useState('');
    const [endereco, setEndereco] = useState('');

    const handlesubmit = () => {

        // validação de formulário
        if (!nome || !email || !senha || !telefone || !idade || !endereco) {
            alert('Por favor, preencha todos os campos!')

            return;
        }

        // Aqui vc pode ficar com o envio dos dados
        console.log("Nome: ", nome);
        console.log("Email: ", email);
        console.log("Senha: ", senha);

        setNome('');
        setEmail('');
        setSenha('');
        setTelefone('');
        setEndereco('');
        setIdade('');

    }

    return (
        <>
            <View style={styles.container}>
                <TextInput style={styles.input} placeholder='Digite seu nome: ' value={nome} onChangeText={setNome} />
                <TextInput style={styles.input} placeholder='Digite seu email: ' value={email} onChangeText={setEmail} />
                <TextInput style={styles.input} placeholder='Digite seu telefone: ' value={telefone} onChangeText={setTelefone} />
                <TextInput style={styles.input} placeholder='Digite seu endereco: ' value={endereco} onChangeText={setEndereco} />
                <TextInput style={styles.input} placeholder='Digite sua idade: ' value={idade} onChangeText={setIdade} />
                <TextInput style={styles.input} placeholder='Digite sua senha: ' value={senha} onChangeText={setSenha} secureTextEntry={true} />
                <Button onPress={handlesubmit} title='Enviar' />
                {nome && email && senha && (
                    <Text>
                        Nome: {nome}, email: {email}, senha: {senha}, telefone: {telefone}, endereco: {endereco}, idade: {idade}
                        {/* adicionando mascara para a senha */}
                        senha: {'*'.repeat(senha.length)}
                    </Text>
                )}
            </View>
        </>
    )
}

const styles = StyleSheet.create({
    container: {
        padding: 20,
    },
    input: {
        height: 50,
        borderColor: 'black',
        borderWidth: 1,
        marginBottom: 12,
        paddingLeft: 8,
    }

})