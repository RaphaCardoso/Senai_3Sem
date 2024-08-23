const { Router } = require("express");

const router = Router();

const ClientController = require("../controller/ClientController");

const { validateClient } = require("../middleware/validateClient");

const { validateAmbienteId } = require("../middleware/validateId");

router.post('/Client', validateClient, (req, res) => {
    ClientController.create(req, res);
});

router.get('/Client', (req, res) => {
    ClientController.getAll(req, res);
});

router.get('/Client/:id', validateAmbienteId, (req, res) => {
    ClientController.getOne(req, res);
});

router.put('/Client/:id', validateAmbienteId, validateClient, (req, res) => {
    ClientController.update(req, res);
});

router.delete('/Client/:id', validateAmbienteId, (req, res) => {
    ClientController.delete(req, res);
});

module.exports = router;