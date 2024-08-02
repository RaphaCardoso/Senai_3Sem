const UserController = {
    create: async (req, res) => {

        try {

            const { nome, idade, email, senha } = req.body;

            console.log({ nome, idade, email, senha });

            return res.status(200).json({
                msg: "Usuário criado com sucesso!"
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
            const { nome, idade, email, senha } = req.body;

            console.log({ id });
            console.log({ nome, idade, email, senha });

            return res.status(200).json({
                msg: "Usuário criado com sucesso!"
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
            return res.status(200).json({
                msg: "Usuários encontrados!",
                usuario: []
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

            return res.status(200).json({
                msg: "Usuário encontrado com sucesso",
                usuario: {}
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