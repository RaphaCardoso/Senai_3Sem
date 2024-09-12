const { where } = require("sequelize");

const Product = require("../models/Product");

const ProductController = {

    create: async (req, res) => {
        try {

            const { nome, preco, quantidade } = req.body;

            const produtoCriado = await Product.create({ nome, preco, quantidade });

            res.status(200).json({
                msg: 'Produto criado com sucesso!',
                Produto: produtoCriado
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'acione o suporte!'
            });

        };
    },

    update: async (req, res) => {

        try {

            const { id } = req.params;

            const { nome, preco, quantidade } = req.body;

            const productValid = await Product.findByPk(id);

            if (productValid == null) {
                return res.status(404).json({
                    msg: 'Produto não encontrado no sistema!',

                });
            };

            const productUpdate = await Product.update({
                nome: nome,
                preco: preco,
                quantidade: quantidade
            }, { where: { id: id } });

            if (productUpdate) {
                return res.status(200).json({
                    msg: 'Produto atualizado com sucesso!'
                });
            };

            return res.status(500).json({
                msg: 'Erro ao atualizar! acione o suporte.'
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o suporte.'
            });

        };

    },

    getAll: async (req, res) => {

        try {

            const produtos = await Product.findAll();

            console.log(produtos);

            return res.status(200).json({
                msg: 'Produtos encontrados!',
                produtos: produtos
            });

        } catch (error) {
            console.error(error);
            return res.status(500).json({
                msg: 'Acione o suporte!'
            })
        };

    },

    getOne: async (req, res) => {

        try {

            const { id } = req.params;

            const productValid = await Product.findByPk(id);

            if (productValid == null) {
                return res.status(404).json({
                    msg: 'Produto não encontrado!'
                });
            };

            res.status(200).json({
                msg: 'Produto encontrado com sucesso!',
                produto: productValid
            });

        } catch (error) {
            console.error(error);
            res.status(500).json({
                msg: 'Acione o suporte!'
            });

        };

    },

    delete: async (req, res) => {
        try {

            const { id } = req.params;

            const productValid = await Product.findByPk(id);

            if (productValid == null) {
                return res.status(404).json({
                    msg: 'Produto não encontrado!'
                });
            };

            productValid.destroy();

            return res.status(200).json({
                msg: "Produto deletado com sucesso!"
            });


        } catch (error) {
            console.error(error);
            res.status(500).json({
                msg: 'Acione o suporte!'
            });

        };
    }

};


module.exports = ProductController;