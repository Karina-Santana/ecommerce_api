const pg = require('pg')

const db = new pg.Pool({
    database: 'ecommerce_app',
});


module.exports = db