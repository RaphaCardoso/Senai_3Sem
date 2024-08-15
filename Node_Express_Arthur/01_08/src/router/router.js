// desestruturando o router e inportando apenas o express
const { Router } = require("express");

const UserController = require("../controller/UserController");
const ProductController = require("../controller/ProductController")

// roteamento
const router = Router();

// Configurações de Rota CRUD user
router.post('/User', (req, res) => {
    UserController.create(req, res)
});

router.get('/User', (req, res) => {
    UserController.getAll(req, res)
});

// /api/users/:id = /api/users/12 ( params ) 
// /api/users?id=12 -> ( Query ) sistema de busca pesquisa /* /api/search?=Arthur%Rosa -> ( Query ) */
// { body: { id: '12'} } -> { Body } para criar e atualizar
router.get('/User/:id', (req, res) => {
    UserController.getOne(req, res)
});

router.put('/User/:id', (req, res) => {
    UserController.update(req, res)
});

router.delete('/User/:id', (req, res) => {
    UserController.delete(req, res)
});


// Api CRUD Product
router.post('/Product', (req, res) => {
    ProductController.create(req, res)
});

router.get('/Product', (req, res) => {
    ProductController.getAll(req, res)
});

router.get('/Product/:id', (req, res) => {
    ProductController.getOne(req, res)
});

router.put('/Product/:id', (req, res) => {
    ProductController.update(req, res)
});

router.delete('/Product/:id', (req, res) => {
    ProductController.delete(req, res)
});




module.exports = router;