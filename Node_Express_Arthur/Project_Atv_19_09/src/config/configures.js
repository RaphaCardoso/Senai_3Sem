// Inicializando objeto sequelize
const { Sequelize } = require('sequelize');

const sequelize = new Sequelize('Gestao_Eventos', 'root', 'root', {
    host: 'localhost',
    dialect: 'mysql'
});

module.exports = sequelize;