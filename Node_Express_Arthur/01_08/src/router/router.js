// desestruturando o router e inportando apenas o express
const { Router } = require("express");

const userRoutes = require("../router/routerUser");
const routerProducts = require("../router/routerProduct");
const routerClient = require('../router/routerClient')
const UserController = require('../controller/UserController')
const authenticateToken = require('../middleware/authenticateToken')

// roteamento
const router = Router();

router.use('/user', userRoutes);
router.use('/product', routerProducts);
router.use('/client', routerClient);

router.post('/login', (req, res) => {
    UserController.login(req, res)
})


module.exports = router;