// Nome, Email e Senha

// next = nextFunction

const validateUser = (req, res, next) => {

    const { nome, email, senha } = req.body;

    if (!nome || !email || !senha) {
        return res.status(400).json({
            msg: 'Campos inválidos, insira os dados!',
        });
    };

    // pode avançar
    return next();
};


module.exports = { validateUser};