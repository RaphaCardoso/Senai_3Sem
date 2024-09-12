const { where } = require("sequelize");
const User = require("../models/User");
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');

const UserController = {

    login: async (req, res) => {

        try {

            const { email, senha } = req.body;

            const user = await User.findOne({ where: { email } });

            if (!user) {
                return res.status(400).json({
                    msg: 'Email ou senha incorretos!'
                });
            };

            const isValid = await bcrypt.compare(senha, user.senha);

            if (!isValid) {
                return res.status(400).json({
                    msg: 'Email ou senha incorretos!'
                })
            };

            const token = jwt.sign({ email: user.email, nome: user.nome }, process.env.SECRET, { expiresIn: '1h' });

            return res.status(200).json({
                msg: 'Login realizado com sucesso!',
                token
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({ msg: "Acione o Suporte" });
        }
    },

    create: async (req, res) => {

        try {

            // desestruturando o body e criando var para cada
            const { nome, email, senha } = req.body;

            const hashSenha = await bcrypt.hash(senha, 10);

            const userCriado = await User.create({ nome, email, senha: hashSenha });

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

            const { nome, email, senha } = req.body

            // {} serve para desestruturar a forma da variável, acessando apenas algumas informações e armazenando em novas variáveis
            //const { nome, email, senha } = req.body;

            const usurioFind = await User.findByPk(id);

            if (usurioFind == null) {
                return res.status(404).json({
                    msg: 'Usuário não encontrado'
                })
            };

            const userAtualizado = await User.update({ nome: nome, email: email, senha: senha }, { where: { id: id } });

            if (userAtualizado) {
                return res.status(200).json({
                    msg: "Usuário atualizado com sucesso!"
                });
            };

            return res.status(500).json({
                msg: "Erro ao Atualizar usuário!"
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

            const { id } = req.params;
            // Primary key
            // SELECT * FROM User id = { id }
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

            const usurioFinded = await User.findByPk(id);

            if (usurioFinded == null) {
                return res.status(404).json({
                    msg: 'Usuário não encontrado'
                })
            };

            usurioFinded.destroy();

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