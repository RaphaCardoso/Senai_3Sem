const validateAmbienteId = (req, res, next) => {

    const { id } = req.params;

    if (!id) {
        return res.status(400).json({
            msg: 'Parâmetro não identificado!'
        });
    };

    return next();
};

module.exports = { validateAmbienteId };