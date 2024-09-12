const { DataTypes } = require('sequelize');
const sequelize = require('../config/config');

// fazendo um objeto user para armazenar informações
const User = sequelize.define('user', {

    // tipo string não nulo
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },

    email: {
        type: DataTypes.STRING,
        allowNull: false
    },

    senha: {
        type: DataTypes.STRING,
        allowNull: false
    }

});

module.exports = User;