const { Router } = require('express');

const router = Router();

const participanteController = require('../controller/ParticipanteController');

router.post('', (req, res) => {
    participanteController.create(req, res)
});

router.get('', (req, res) => {
    participanteController.getAll(req, res)
});

router.get('/:id', (req, res) => {
    participanteController.getOne(req, res)
});

router.put('/:id', (req, res) => {
    participanteController.update(req, res)
});

router.delete('/:id', (req, res) => {
    participanteController.delete(req, res)
})


module.exports = router;