const { DataTypes } = require('sequelize');
const sequelize = require('../config/config');

const Product = sequelize.define('client', {

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    cpf: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    idade: {
        type: DataTypes.STRING,
        allowNull: false
    },

});

module.exports = Product;