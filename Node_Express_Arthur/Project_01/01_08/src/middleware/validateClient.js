const validateClient = (req, res, next) => {

    const { nome, cpf, email, idade } = req.body;

    if (!nome || !cpf || !email || !idade) {
        return res.status(400).json({
            msg: 'Campos inválidos, Insira os dados corretamente!'
        });
    };

    return next();
};


module.exports = { validateClient };