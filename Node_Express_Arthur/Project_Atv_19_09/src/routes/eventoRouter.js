const { Router } = require('express');

const router = Router();

const eventoController = require('../controller/eventoController');

router.post('', /*validate evento*/(req, res) => {
    eventoController.create(req, res);
});

router.get('', (req, res) => {
    eventoController.getAll(req, res);
})

router.get('/:id', (req, res) => {
    eventoController.getOne(req,res);
})

router.put
router.delete

module.exports = router;