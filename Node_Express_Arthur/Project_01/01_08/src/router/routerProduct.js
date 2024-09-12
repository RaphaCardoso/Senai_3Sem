const { Router } = require("express");

const router = Router();

const ProductController = require("../controller/ProductController");

const { validateProduct } = require("../middleware/ValidateProduct");

const { validateAmbienteId } = require("../middleware/validateId");


router.post('', validateProduct, (req, res) => {
    ProductController.create(req, res)
});

router.get('', (req, res) => {
    ProductController.getAll(req, res)
});

router.get('/:id', validateAmbienteId, (req, res) => {
    ProductController.getOne(req, res)
});

router.put('/:id', validateAmbienteId, validateProduct, (req, res) => {
    ProductController.update(req, res)
});

router.delete('/:id', validateAmbienteId, (req, res) => {
    ProductController.delete(req, res)
});

module.exports = router;