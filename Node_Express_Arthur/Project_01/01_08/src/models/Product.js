const { DataTypes } = require('sequelize');
const sequelize = require('../config/config');

// fazendo um objeto user para armazenar informações
const Product = sequelize.define('product', {

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    preco: {
        type: DataTypes.DOUBLE,
        allowNull: false
    },
    quantidade: {
        type: DataTypes.INTEGER
    }

});

module.exports = Product;