const { where } = require('sequelize');

const Evento = require('../models/Evento');

const Participante = require('../models/Participante');

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

                eventoValid.update({ nome, data, localizacao });

                return res.status(200).json({
                    msg: "Atualização feita com sucesso!",
                    eventoValid
                })
            }

            return res.status(404).json({
                msg: "Evento indisponível! Acione o suporte."
            })

        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }
    },

    delete: async (req, res) => {

        try {

            const { id } = req.params;

            const eventoValid = await Evento.findByPk(id);

            if (!eventoValid) {

                res.status(404).json({
                    msg: "Evento indisponível! Acione o suporte."
                });

            }

            eventoValid.destroy()


            res.status(200).json({
                msg: "Evento deletado com sucesso!",
                evento: eventoValid
            });


        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }
    },

    getByParticipante: async (req, res) => {
        try {

            const { id } = req.params;

            const participantes = await Participante.findAll({ where: { eventoId: id } });

            res.status(200).json({
                participantes: participantes
            });

        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })

        }
    }
}

module.exports = eventoController;