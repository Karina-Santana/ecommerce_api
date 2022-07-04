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
        .then(product => res.json(product))
})

router.post('/', (req, res) => {
    const title = req.body.title
    const image = req.body.image
    const price = req.body.price
    const rating = req.body.rating
    const num_reviews = req.body.num_reviews
    const count_in_stock = req.body.count_in_stock
    const category = req.body.category

    Product
        .create(title, image, price, rating, num_reviews, count_in_stock, category)
        .then(product => res.json(product))
})

// router.delete('/:id', (req, res) => {
//     const productId = req.params.id

//     Product
//         .delete(productId)
//         .then(() => res.json({ message: 'deleted successfully' }))
// })

module.exports = router