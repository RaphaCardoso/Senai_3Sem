const { Router } = require("express");

const router = Router();

const ProductController = require("../controller/ProductController");

const { validateProduct } = require("../middleware/ValidateProduct");

const { validateAmbienteId } = require("../middleware/validateId");


router.post('/Product', validateProduct, (req, res) => {
    ProductController.create(req, res)
});

router.get('/Product', (req, res) => {
    ProductController.getAll(req, res)
});

router.get('/Product/:id', validateAmbienteId, (req, res) => {
    ProductController.getOne(req, res)
});

router.put('/Product/:id', validateAmbienteId, validateProduct, (req, res) => {
    ProductController.update(req, res)
});

router.delete('/Product/:id', validateAmbienteId, (req, res) => {
    ProductController.delete(req, res)
});

module.exports = router;