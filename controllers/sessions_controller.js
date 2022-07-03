const express = require('express')
const router = express.Router()

//models
const User = require('../models/user')

//bcrypt
const bcrypt = require('bcrypt')

//routes
router.post('/', (req, res) => {
    const { email, password } = req.body

    User
        .findByEmail(email)
        .then(user => {
            const isValidPassword = bcrypt.compareSync(password, user, password_digest) //checking the password

            if (user && isValidPassword) {
                //log the user in
                req.session.userId = user.id  //it's storing the user Id in the session
                res.json({
                    userId: user.id,
                    userName: user.name,
                    email: user.email
                }) //sending the user name back to the front-end
            }
        })
})

router.delete('/', (req, res) => {
    req.session.userId = undefined;
    res.json({ message: 'logout successfully' });
});

module.exports = router