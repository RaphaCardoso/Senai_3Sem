const { where } = require('sequelize');

const Evento = require('../models/Evento');

const eventoController = {

    create: async (req, res) => {

        try {

            const { nome, data, localizacao } = req.body;

            const evento = await Evento.create({
                nome, data, localizacao
            });

            res.status(200).json({
                msg: 'Evento Criado com sucesso!',
                evento: evento
            });

        } catch (err) {
            console.error(err);
            return res.status(500).json({
                msg: 'Acione o suporte!'
            });

        }
    },

    getAll: async (req, res) => {
        try {

            const eventos = await Evento.findAll();

            return res.status(200).json({
                msg: 'Eventos Disponíveis:',
                eventos: eventos
            })

        } catch (err) {
            console.error(err);
            return res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }
    },

    getOne: async (req, res) => {

        try {

            const { id } = req.params;

            const eventoValid = await Evento.findByPk(id);

            if (eventoValid == null) {
                return res.status(404).json({
                    msg: 'Evento não disponível!',

                })
            }

            return res.status(200).json({
                msg: 'Evento: ',
                eventos: eventoValid
            })

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }

    },

    update: async (req, res) => {
        try {

            const { id } = req.params;

            const { nome, data, localizacao } = req.body;

            const eventoValid = await Evento.findByPk(id);

            if (eventoValid) {

                const evento = await Evento.update({ nome, data, localizacao }, { id });

                res.status(200).json({
                    msg: "Atualização feita com sucesso!",
                    evento: evento
                })
            }

            res.status(404).json({
                msg: "Evento indisponível! Acione o suporte."
            })

        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }
    }
}

module.exports = eventoController;