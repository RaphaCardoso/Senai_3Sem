const { Router } = require('express');
const admController = require('../controller/admController');
const router = Router();

// rotas para fazer login
router.post('/login', admController.login);

router.post("/", admController.create);

router.get("/", admController.getAll);

router.get("/", admController.getOne);

router.put("/:id", admController.update);

router.delete("/:id", admController.delete);

module.exports = router;