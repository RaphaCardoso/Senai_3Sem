const { Router } = require('express');

const router = Router();

const eventoController = require('../controller/eventoController');

router.post('', /*validate evento*/(req, res) => {
    eventoController.create(req, res);
});

router.get('', (req, res) => {
    eventoController.getAll(req, res);
});

router.get('/:id', (req, res) => {
    eventoController.getOne(req, res);
});

router.put('/:id', (req, res) => {
    eventoController.update(req, res);
});

router.delete('/:id', (req, res) => {
    eventoController.delete(req, res);
});

router.get('/:id/participante', (req, res) => {
    eventoController.getByParticipante(req, res)
});

module.exports = router;