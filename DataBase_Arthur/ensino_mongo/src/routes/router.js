const { Router } = require('express');

const router = Router();

const userRoutes = require('./userRoute');

router.use('/user', userRoutes);

module.exports = router;