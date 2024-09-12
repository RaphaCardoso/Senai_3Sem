const { where } = require("sequelize");

const Client = require("../models/Client");

const ClientController = {

    create: async (req, res) => {

        try {

            const { nome, cpf, email, idade } = req.body;

            const clientCriado = await Client.create({ nome, cpf, email, idade });

            res.status(200).json({
                msg: 'Cliente criado com sucesso!',
                cliente: clientCriado
            });


        } catch (error) {
            console.error(error + 'aqui');
            return res.status(500).json({
                msg: 'Acione o Surpote'
            });
        }


    },

    getAll: async (req, res) => {

        try {

            const clientes = await Client.findAll();

            return res.status(200).json({
                msg: 'Clientes encontrados!',
                cliente: clientes
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o Surpote'
            });
        }

    },

    getOne: async (req, res) => {
        try {

            const { id } = req.params;

            const clienteIsValid = await Client.findByPk(id)

            if (clienteIsValid == null) {
                return res.status(404).json({
                    msg: 'Cliente não encontrado!'
                });
            };

            res.status(200).json({
                msg: 'Cliente encontrado com sucesso!',
                cliente: clienteIsValid
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o Surpote'
            });
        }
    },

    update: async (req, res) => {

        try {
            const { id } = req.params;

            const { nome, cpf, email, idade } = req.body;

            const clienteIsValid = await Client.findByPk(id);

            if (clienteIsValid == null) {
                return res.status(404).json({
                    msg: 'Cliente não encontrado!'
                });
            };

            const clientUpdate = await Client.update({
                nome: nome,
                cpf: cpf,
                email: email,
                idade: idade
            }, { where: { id: id } });


            if (clientUpdate) {
                return res.status(200).json({
                    msg: 'Cliente atualizado com sucesso!'
                });
            };

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o Surpote'
            });
        }


    },

    delete: async (req, res) => {
        try {

            const { id } = req.params;

            const clienteIsValid = await Client.findByPk(id);

            if (clienteIsValid == null) {
                return res.status(404).json({
                    msg: 'Cliente não encontrado!'
                });
            };

            clienteIsValid.destroy();

            return res.status(200).json({
                msg: "Cliente deletado com sucesso!"
            });


        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o Surpote'
            });
        };
    }

};

module.exports = ClientController;