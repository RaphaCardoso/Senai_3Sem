// servidor js 
const express = require('express');

// 
require('dotenv').config();

// Instanciando rotas, gerenciador de rotas
const router = require('./router/router');

// arquivo de conexão com o banco
const sequelize = require('./config/config');

// sincronização com a tabela do banco
const User = require('./models/User');

const Product = require('./models/Product');

const Client = require('./models/Client');

// decalarando o servidor express
const app = express();

// Modelo da API JSON
app.use(express.json());

// Caminho para api
app.use('/api', router);

// Serve para verificar se o server está vivo
app.get('/healthcheck', (req, res) => {
    // 200 -> ok
    // rota para verificar se api esta online e em plena atividade
    return res.status(200).json({
        msg: 'Estamos Funcionando',
        alive: true
    })
});

// Ouvindo na porta 8080
sequelize.authenticate().then(async () => {
    // try {} catch (error)  == ao .then()
    console.log('Conexão estabelecida com sucesso');
    await sequelize.sync();
    // verifica se tudo esta sincronizado

}).then(() => {

    // .ther() é igual a 'se estiver funcionando faça'
    app.listen(process.env.PORT == null ? 8080 : process.env.PORT, () => {
        console.log("");
        console.log("Estamos online na http://localhost:8080");
        console.log("");
    });

}).catch((error) => {
    console.error('Erro ao se conectar com o banco:', error);
});


