const { log } = require('console');
const { Socket } = require('dgram');
const express = require('express');
const http = require('http');
const { Server } = require('socket.io');

const app = express();

const server = http.createServer(app);

const io = new Server(server);

app.get('/', (req, res) => {

    res.sendFile(__dirname + '/index.html');

});

let awaitingUser = null;

io.on('connection', (socket) => {
    console.log('Um usuário se conectou');

    socket.on('set username', (username) => {
        socket.username = username;

        // Para ver quem conetou na sala
        console.log(`${username} entrou na sala.`);

        if (awaitingUser) {
            // Se há um user esperando aparelha os dois
            socket.partner = awaitingUser;
            awaitingUser.partner = socket;

            awaitingUser.emit('chat start', `Falando com ${socket.username}`);
            socket.emit('chat start', `Falando com ${awaitingUser.username}`);


            awaitingUser = null;
        } else {
            // Se não tem ninguem esperando, colocar ele na espera
            awaitingUser = socket;
            socket.emit('waiting', 'Aguardando por um usuário para conversar...');
        }
    });


    // Enviar mensagem 
    socket.on('chat message', (msg) => {
        if (socket.partner) {
            socket.partner.emit('chat message', `${socket.username}: ${msg}`)
        }
    });

    // Desconectar
    socket.on('manual disconnect', () => {
        if (socket.partner) {
            socket.partner.emit('chat end', `${socket.username} desconectou.`);
            socket.partner.partner = null;
            socket.partner = null;
        }
        socket.emit('chat end', 'Você desconectou.');
    });


    // Lidar com Desconexão
    socket.on('disconnect', () => {
        if (socket.partner) {
            socket.partner.emit('chat end', `${socket.username} desconectou.`)
            socket.partner.partner = null;
        }

        if (awaitingUser === socket) {
            awaitingUser = null;
        }
    });

});

server.listen(3000, () => {
    console.log('Servidor na porta 3000');
});



