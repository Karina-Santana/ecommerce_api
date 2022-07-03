const db = require("../db/db")

const Product = {
    findAll: () => {
        const sql = 'SELECT * FROM products'
        return db
            .query(sql) //it brings back the data (products table) as a query (promise)
            .then(dbRes => dbRes.rows) //when the data comes, get the all records 

    },

    findById: productId => {
        const sql = `SELECT * FROM products 
        WHERE id = $1
        `
        return db
            .query(sql, [productId]) //it brings back the data (products table) as a query (promise)
            .then(dbRes => dbRes.rows[0]) //when the data comes, get the all records 
    }

    // create: (title, image, price) => {
    //     const sql = `
    //         INSERT INTO products(title, image, price)
    //         VALUES ($1, $2, $3)
    //         RETURNING *
    //     `
    //     //RETURNING * gives back the record we've just created with the INSERT statement.

    //     return db
    //         .query(sql, [title, image, price])
    //         .then(dbRes => dbRes.rows[0])
    // },

    // delete: (productId) => {
    //     const sql = `
    //         DELETE FROM products WHERE id = $1
    //     `

    //     return db.query(sql, [productId])
    // }
}

module.exports = Product