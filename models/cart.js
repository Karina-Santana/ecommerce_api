const db = require('../db/db')

const Cart = {
    findAll: () => {
        const sql = `
            SELECT * FROM carts
        `
        return db.query(sql).then((dbRes) => dbRes.rows)
    },

    findById: productId => {
        const sql = `SELECT * FROM carts 
        WHERE id = $1
        `
        return db
            .query(sql, [productId]) //it brings back the data (carts table) as a query (promise)
            .then(dbRes => dbRes.rows[0]) //when the data comes, get the all records 
    },

    create: (product_id, title, image, price, qty) => {
        const sql = `
            INSERT INTO carts(product_id, title, image, price, unit)
            VALUES ($1, $2, $3, $4, $5)
            RETURNING *
        `
        return db
            .query(sql, [product_id, title, image, price, qty])
            .then((dbRes) => dbRes.rows[0])
    },

    delete: (product_id) => {
        const sql = `
            DELETE FROM carts WHERE id = $1
        `
        return db.query(sql, [product_id])
    }

}

module.exports = Cart