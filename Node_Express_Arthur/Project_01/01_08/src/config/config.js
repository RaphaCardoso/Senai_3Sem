// iniando objeto sequelize
const { Sequelize } = require('sequelize');
// tabela, user, senha
const sequelize = new Sequelize('lojaLibbs', 'root', 'root', {
    // servidor e tipo de banco
    host: 'localhost',
    dialect: 'mysql'

});

// exportador de arquivo
module.exports = sequelize;