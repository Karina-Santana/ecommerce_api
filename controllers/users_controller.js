const express = require('express')
const router = express.Router()
const bcrypt = require('bcrypt')

//models
const User = require('../models/user')

//routes
router.post('/', (req, res) => {
    //grabbing everything from body and saving in this variable (req.body)
    const { name, email, password } = req.body

    //using bcrypt to create password digest
    const passwordDigest = bcrypt.hashSync(password, bcrypt.genSaltSync(10), null)

    if (name.length < 6) {
        res.status(400).json({ error: 'name should be at least 6 characters' })
    } else {
        User //accessing the User model (user.js) - which I declared above (in line 6 here)
            //so the function in users.js (models) will run
            .create(name, email, passwordDigest) //entering the user's details
            .then(userName => res.json(userName)) //converting the data to json
    }
}) //And we finally send back the data to the front-end and render the page again

module.exports = router