const { Router } = require("express");

const userController = require('../controller/userController');

const { validateUser, validateUserId } = require('../middlewares/validateUser');

const authenticateToken = require('../middlewares/validateToken');

const router = Router();

router.post('/', validateUser, userController.create);

router.get('/:id', userController.getOne);

router.put('/:id', validateUser, validateUserId, userController.update);

router.get('/', userController.getAll);

router.delete('/:id', validateUserId, userController.delete);

module.exports = router;