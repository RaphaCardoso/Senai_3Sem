const { Router } = require("express");

const router = Router();

const UserController = require("../controller/UserController");

const { validateUser } = require("../middleware/validateUser");

const { validateAmbienteId } = require("../middleware/validateId");

// Configurações de Rota CRUD user

// obj
router.post('/User', validateUser, (req, res) => {
    UserController.create(req, res)
});

router.get('/User', (req, res) => {
    UserController.getAll(req, res)
});

// /api/users/:id = /api/users/12 ( params ) 
// /api/users?id=12 -> ( Query ) sistema de busca pesquisa /* /api/search?=Arthur%Rosa -> ( Query ) */
// { body: { id: '12'} } -> { Body } para criar e atualizar
router.get('/User/:id', validateAmbienteId, (req, res) => {
    UserController.getOne(req, res)
});

router.put('/User/:id', validateAmbienteId, validateUser, (req, res) => {
    UserController.update(req, res)
});

router.delete('/User/:id', validateAmbienteId, (req, res) => {
    UserController.delete(req, res)
});



module.exports = router;