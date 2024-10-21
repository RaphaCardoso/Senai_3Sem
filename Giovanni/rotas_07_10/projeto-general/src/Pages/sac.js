import React, { useEffect, useState } from 'react'

import { StyleSheet, View, Text } from 'react-native'

import axios from 'axios';

export default function sac() {

    const [faq, setFaq] = useState([]);

    const listFaq = () => {
        axios.get("http://10.0.2.2:3000/faq").then((resposta) => {
            setFaq(resposta.data)
        }).catch((error) => {
            console.error("Error ao buscar Faq", error)
        });
    }

    useEffect(() => {
        listFaq();
    }, [])

    return (
        <View style={style.container}>
            <Text style={style.title}>Perguntas Frequentes:</Text>
            {faq.length > 0 ? (
                faq.map((faqs, index) => (
                    <View key={index} style={style.faqItem}>
                        <Text style={style.faqPergunta}>{faqs.pergunta}</Text>
                        <Text>{faqs.resposta}</Text>
                    </View>
                ))
            ) : (<Text style={style.noFaqs}>Nenhuma pergunta disponivel</Text>)}
        </View>
    )
}

const style = StyleSheet.create({
    container: {
        padding: 20
    },
    title: {
        fontSize: 24,
        fontWeight: "bold",
        marginBottom: 10,
    },
    faqItem: {
        padding: 10,
        borderBottomWidth: 1,
        borderBottomColor: "#ccc"
    },
    noFaqs: {
        fontSize: 16,
        color: "gray",
        textAlign: "center",
        marginTop: 20
    },
    faqPergunta: {
        fontWeight: 'bold'
    }
})
