
const validateProduct = (req, res, nest) => {

    const { nome, preco, quantidade } = req.body;

    if (!nome || !preco || !quantidade) {
        return res.status(400).json({
            msg: 'Campos inválidos, insira os dados!',
        });
    };

    // pode avançar
    return next();
};


module.exports = { validateProduct };


