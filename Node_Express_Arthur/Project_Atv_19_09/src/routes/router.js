// desestruturando o router e inportando apenas o express
const { Router } = require("express");



const router = Router();

const eventoRouter = require('../routes/eventoRouter');

const participanteRouter = require('../routes/participanteRouter');

router.use('/evento', eventoRouter);

router.use('/participante', participanteRouter);

module.exports = router;