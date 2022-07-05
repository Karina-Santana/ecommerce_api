const express = require('express')
const router = express.Router()

const Cart = require('../models/cart.js')
router.post('/', (req, res) => {
    const { product_id, title, image, price, unit } = req.body

    Cart.create(product_id, title, image, price, unit)
        .then((product) => res.json(product))
})

router.get('/', (req, res) => {
    Cart.findAll().then((products) => res.json(products));
});

router.delete('/:id', (req, res) => {
    const itemId = req.params.id;

    Cart.delete(itemId).then(() => res.json({ message: 'delete successfully' }));
});

module.exports = router