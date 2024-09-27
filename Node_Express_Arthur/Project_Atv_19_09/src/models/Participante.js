const { DataTypes } = require('sequelize');
const sequelize = require('../config/configures');
const Evento = require('./Evento');

const Participante = sequelize.define('participantes', {
    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    },
    eventoId: {
        type: DataTypes.INTEGER,
        references: {
            model: Evento,
            key: 'id'
        },
        onDelete: 'CASCADE'
    }
});


module.exports = Participante;