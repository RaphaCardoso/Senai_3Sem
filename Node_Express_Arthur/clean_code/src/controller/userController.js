const userService = require("../services/userService")

const userController = {
    create: async (req, res) => {
        try {
            const user = await userService.create(req.body);
            return res.status(201).json({
                msg: 'Usuário criado com sucesso',
                user
            })
        } catch (error) {
            return res.status(500).json({
                msg: 'Erro ao tentar criar o usuário'
            })
        }
    },

    update: async (req, res) => {
        try {

            const user = await userService.update(req.params.id, req.body);

            if (!user) {
                return res.status(400).json({
                    msg: 'User não encontrado'
                })
            }

            return res.status(200).json({
                msg: 'User atualizado com sucesso', user
            });

        } catch (error) {
            return res.status(500).json({
                msg: ' Erro ao tentar atualizar o usuário'
            })
        }
    },

    delete: async (req, res) => {
        try {

            const { id } = req.params;

            const user = await userService.delete(id);

            if (!user) {
                return res.status(400).json({
                    msg: "Usuario não encontrado"
                })
            }

            return res.status(200).json({
                msg: "Usuario deletado com sucesso",
                user
            })

        } catch (error) {
            return res.status(500).json({
                msg: "Erro ao deletar os users"
            })
        }
    },

    getAll: async (req, res) => {
        try {
            const users = await userService.getAll();

            return res.status(200).json({
                msg: "Usuarios cadastrados: ",
                users
            })

        } catch (error) {
            return res.status(500).json({
                msg: "Erro ao listar os users"
            })
        }
    },

    getOne: async (req, res) => {
        try {

            const { id } = req.params;

            const user = await userService.getById(id);

            if (!user) {
                return res.status(400).json({
                    msg: "User não encontrado"
                })
            }

            return res.status(200).json({
                msg: "User: ",
                user
            })

        } catch (error) {
            return res.status(500).json({
                msg: "Erro ao listar o user"
            })
        }
    }

}

module.exports = userController