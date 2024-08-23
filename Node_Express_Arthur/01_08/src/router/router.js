// desestruturando o router e inportando apenas o express
const { Router } = require("express");

const userRoutes = require("../router/routerUser");
const routerProducts = require("../router/routerProduct");
const routerClient = require('../router/routerClient')

// roteamento
const router = Router();

router.use('/user', userRoutes);
router.use('/product', routerProducts);
router.use('/client', routerClient);



module.exports = router;