const { Router } = require("express");

const router = Router();

const ClientController = require("../controller/ClientController");

const { validateClient } = require("../middleware/validateClient");

const { validateAmbienteId } = require("../middleware/validateId");

router.post('', validateClient, (req, res) => {
    ClientController.create(req, res);
});

router.get('', (req, res) => {
    ClientController.getAll(req, res);
});

router.get('/:id', validateAmbienteId, (req, res) => {
    ClientController.getOne(req, res);
});

router.put('/:id', validateAmbienteId, validateClient, (req, res) => {
    ClientController.update(req, res);
});

router.delete('/:id', validateAmbienteId, (req, res) => {
    ClientController.delete(req, res);
});

module.exports = router;