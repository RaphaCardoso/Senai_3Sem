// Servidor 
const express = require('express');

// Instanciando as rotas, para o gerenciador de rotas
const router = require('./routes/router');

const sequelize = require('./config/configures');


require('./models/Evento');
require('./models/Participante');

const app = express();

app.use(express.json());

app.use('/api', router);

app.get('healthcheck', (req, res) => {
    return res.status(200).json({
        msg: "Servidor ativo!",
        alive: true
    })
})

sequelize.authenticate().then(async () => {
    console.log('Conexão estabelecida com sucesso');
    await sequelize.sync();
}).then(() => {
    app.listen(3000, () => {
        console.log("");
        console.log("Estamos online na http://localhost:3000");
        console.log("");
    });
}).catch((error) => {
    console.error('Erro na conexão com o banco de dados: ', error);
});