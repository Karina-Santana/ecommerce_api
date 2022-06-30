const session = require('express-session')

//here I'm storing the session
const sessions = session({
    key: 'user_sid',
    secret: process.env.EXPRESS_SESSION_SECRET_KEY,
    resave: false,
    saveUninitialized: false,
    cookie: { maxAge: 1000 * 60 * 60 * 24 }
})

module.exports = sessions