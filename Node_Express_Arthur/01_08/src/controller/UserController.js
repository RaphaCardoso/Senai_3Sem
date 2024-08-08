const { where } = require("sequelize");
const User = require("../models/User");

const UserController = {
    create: async (req, res) => {

        try {

            const { nome, email, senha } = req.body;

            const userCriado = await User.create({ nome, email, senha });

            return res.status(200).json({
                msg: "Usuário criado com sucesso!",
                User: userCriado
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: "Acione o suporte"
            });
        };

    },

    update: async (req, res) => {
        try {

            const { id } = req.params; // Usuário/atualizar/42342343

            // {} serve para desestruturar a forma da variável, acessando apenas algumas informações e armazenando em novas variáveis
            //const { nome, email, senha } = req.body;


            const usurioFind = await User.findByPk(id);

            if (usurioFind == null) {
                return res.status(404).json({
                    msg: 'Usuário não encontrado'
                })
            };

            const userAtualizado = await User.update({ nome: req.body.nome, email: req.body.email, senha: req.body.senha }, { where: { id: id } })

            return res.status(200).json({
                msg: "Usuário atualizado com sucesso!"
            });


        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: "Acione o suporte"
            });
        };
    },

    getAll: async (req, res) => {
        try {

            const usuarios = await User.findAll();

            return res.status(200).json({
                msg: "Usuários encontrados!",
                usuarios: usuarios
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: "Acione o suporte"
            });
        };
    },

    getOne: async (req, res) => {
        try {

            const id = req.params.id

            const usurioFind = await User.findByPk(id);

            if (usurioFind == null) {
                return res.status(404).json({
                    msg: 'Usuário não encontrado'
                })
            }

            return res.status(200).json({
                msg: "Usuário encontrado com sucesso",
                usuario: usurioFind
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: "Acione o suporte"
            });
        };
    },

    delete: async (req, res) => {
        try {

            const { id } = req.params;

            const usurioFind = await User.findByPk(id);

            if (usurioFind == null) {
                return res.status(404).json({
                    msg: 'Usuário não encontrado'
                })
            };

            usurioFind.destroy();

            return res.status(200).json({
                msg: "Usuário deletado com sucesso!"
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: "Acione o suporte"
            });
        };
    },
};

module.exports = UserController;