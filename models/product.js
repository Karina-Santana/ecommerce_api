const db = require("../db/db")

const Product = {
    findAll: () => {
        const sql = 'SELECT * FROM products'

        return db
            .query(sql) //it brings back the data (products table) as a query
            .then(dbRes => dbRes.rows) //when the data comes, get the all records 
    },

    create: (name, image, price, stock) => {
        const sql = `
            INSERT INTO products(name, image, price, stock)
            VALUES ($1, $2, $3, $4)
            RETURNING *
        `
        //RETURNING * gives back the record we've just created with the INSERT statement.

        return db
            .query(sql, [name, image, price, stock])
            .then(dbRes => dbRes.rows[0])
    },

    delete: (productId) => {
        const sql = `
            DELETE FROM products WHERE id = $1
        `

        return db.query(sql, [productId])
    }
}

module.exports = Product