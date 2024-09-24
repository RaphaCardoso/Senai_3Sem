const { where } = require('sequelize');

const Participante = require('../models/Participante');

const participanteController = {

    create: async (req, res) => {

        try {

            const { nome, email, eventoId } = req.body;

            const participante = await Participante.create(
                { nome, email, eventoId }
            );

            // participante.then(participantee => console.log(participantee))

            res.status(200).json({
                msg: 'Participante adicionado com sucesso!',
                participante: participante
            });


        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })

        }

    },

    getOne: async (req, res) => {
        try {

            const { id } = req.params;

            const participante = await Participante.findByPk(id);

            if (participante) {
                res.status(200).json({
                    msg: 'Participante: ',
                    participante: participante
                });
            }

            res.status(404).json({
                msg: 'Participante não encontrado!'
            });

        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!',
            })
        }
    },

    getAll: async (req, res) => {
        try {

            const participantes = await Participante.findAll();

            res.status(200).json({
                msg: 'Participantes adicionados: ',
                participantes: participantes
            })

        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })

        }
    },

    update: async (req, res) => {
        try {

            const { id } = req.params;

            const { nome, email, eventoId } = req.body

            const participanteValid = await Participante.findByPk(id);

            if (participanteValid) {

                const participante = await Participante.update({ nome, email, eventoId }, { id });

                res.status(200).json({
                    msg: 'Participante atualizado com sucesso!',
                    participante: participante
                })
            }

            res.status(404).json({
                msg: 'Participante não encontrado! Acione o suporte.'
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

            const participanteValid = await Participante.findByPk(id);

            if (!participanteValid) {
                res.status(404).json({
                    msg: 'Participante não encontrado!',
                })
            }

            participanteValid.destroy();

            res.status(200).json({
                msg: 'Participante excluído com sucesso!'
            })


        } catch (err) {
            console.error(err);
            res.status(500).json({
                msg: 'Acione o suporte!'
            })
        }

    }

};

module.exports = participanteController;