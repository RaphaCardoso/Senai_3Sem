const express = require('express');

// Instanciando rotas
const router = require('./router/router');

const app = express();

// Modelo da API JSON
app.use(express.json());

// Caminho para api do User
app.use('/api/User', router);

// Serve para verificar se o server está vivo
app.get('/healthcheck', (req, res) => {
    // 200 -> ok
    return res.status(200).json({
        msg: 'Estamos Funcionando',
        alive: true
    })
});

// Ouvindo na porta 8080
app.listen(8080, () => {
    console.log("###################");
    console.log("Estamos online na http://localhost:8080");
    console.log("###################");
});