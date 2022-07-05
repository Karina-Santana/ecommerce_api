const express = require('express')
const app = express()
const port = process.env.PORT || 3002

app.listen(port, () => console.log(`server is listening on port: ${port}`))

// puts the JSON data into req.body
app.use(express.json())

//middlewares
const logger = require('./middlewares/logger')
const sessions = require('./middlewares/sessions')

//controllers
const productsController = require('./controllers/products_controller')
const usersController = require('./controllers/users_controller')
const sessionsController = require('./controllers/sessions_controller')
const cartsController = require('./controllers/carts_controller')
// const ordersController = require('./controllers/orders_controller')

app.use(logger)

app.use(express.static('client'))

app.use(sessions)

app.use('/api/products', productsController)

app.use('/api/users', usersController)

app.use('/api/sessions', sessionsController)

app.use('/api/cart', cartsController)

// app.use('/api/orders', ordersController)