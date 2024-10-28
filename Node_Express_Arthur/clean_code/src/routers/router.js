const { Router } = require("express");

const router = Router();

const userRoutes = require('./usuarioRotas');

const admRoutes = require('./admRouter')

router.use('/user', userRoutes);

router.use('/adm', admRoutes)

module.exports = router;