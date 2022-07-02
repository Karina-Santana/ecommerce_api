const express = require('express')
const router = express.Router()

//models
const Product = require('../models/product')

//routes
router.get('/', (req, res) => {
    Product //refering to the Product object that I declared in models/product
        .findAll() //getting the findAll function from the models/product
        .then(products => res.json(products)) //getting the records, converting to json and sending back to the client
})

router.get('/:id', (req, res) => {
    const productId = req.params.id
    Product
        .findById(productId)
        .then(products => res.json(products))
})

router.post('/', (req, res) => {
    const title = req.body.title
    const image = req.body.image
    const price = req.body.price

    Product
        .create(title, image, price, description)
        .then(product => res.json(product))
})

router.delete('/:id', (req, res) => {
    const productId = req.params.id

    Product
        .delete(productId)
        .then(() => res.json({ message: 'deleted successfully' }))
})

module.exports = router