const express = require('express')
const router = express.Router()

//models
const Product = require('../models/product')

//routes
router.get('/all-products', (req, res) => {
    Product //refering to the Product pbject that I declared in models/product
        .findAll() //getting the findAll function from the models/product
        .then(products => res.json(products)) //getting the records, converting to json and sending back to the client
})

router.post('/all=products', (req, res) => {
    const name = req.body.name
    const image = req.body.image
    const price = req.body.price
    const stock = req.body.stock

    Product
        .create(name, image, price, stock)
        .then(product => res.json(product))
})

router.delete('/all-products/:id', (req, res) => {
    const productId = req.params.id

    Product
        .delete(productId)
        .then(() => res.json({ message: 'deleted successfully' }))
})

module.exports = router