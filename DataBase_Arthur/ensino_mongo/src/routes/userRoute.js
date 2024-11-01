const { Router } = require('express');


const userController = require('../controller/UserController');

const router = Router();

router.post('/', userController.create);

router.get('/:id', userController.getOne);

router.get('/', userController.getAll);

router.put('/:id', userController.update);

router.delete('/:id', userController.delete);

module.exports = router;