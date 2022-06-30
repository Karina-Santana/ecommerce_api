function logger(req, res, next) {
    console.log(`${new Date()} ${req.method} ${req.path}`)

    //next() calls the next function in the middleware to run
    next()
}

module.exports = logger