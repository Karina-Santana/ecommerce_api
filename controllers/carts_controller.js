const express = require('express')
const router = express.Router()

const Cart = require('../models/cart.js')
router.post('/', (req, res) => {
    const { product_id, title, image, price, unit } = req.body

    Cart.create(product_id, title, image, price, unit)
        .then((product) => res.json(product))
})

router.get('/:id', (req, res) => {
    const productId = req.params.id

    Cart
        .findById(productId)
        .then(product => res.json(product))
})

router.delete('/:id', (req, res) => {
    const productId = req.params.id;

    Cart.delete(productId).then(() => res.json({ message: 'delete successfully' }));
})

module.exports = router