CREATE DATABASE ecommerce_app;
\c ecommerce_app

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title TEXT,
    image TEXT,
    rating FLOAT,
    numReviews INTEGER,
    price INTEGER,
    countInStock INTEGER,
    category TEXT
);

INSERT INTO products(title, image, rating, numReviews, price, countInStock, category) VALUES
('Pink dress with ruffle', 'https://mottive.com.br/wp-content/uploads/2022/01/IMG_1239-1.jpg', 3.5, 10, 130, 2, 'dresses'), ('Long dark blue dress', 'https://mottive.com.br/wp-content/uploads/2021/11/20210914_121442002_iOS-1.jpg', 4.5, 12, 142, 3, 'dresses'), ('Short white dress', 'https://mottive.com.br/wp-content/uploads/2022/01/MOTITVE__105706-1-1-600x900.jpg', 5, 8, 133, 2, 'dresses'), ('Light pink long dress', 'https://mottive.com.br/wp-content/uploads/2022/01/Facetune_29-10-2021-17-47-25-1-1-600x898.jpg', 4.5, 15, 149, 4, 'dresses'), ('Short white dress with ruffle', 'https://mottive.com.br/wp-content/uploads/2022/01/IMG_1234-1-600x898.jpg', 5, 9, 135, 1, 'dresses'), ('Light green dress with ruffle', 'https://mottive.com.br/wp-content/uploads/2022/01/Facetune_13-09-2021-01-36-30-2-600x898.jpeg', 3.5, 10, 169, 0, 'dresses');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE carts(
    id SERIAL PRIMARY KEY,
    product_id TEXT,
    title TEXT,
    image TEXT,
    price INTEGER,
    unit INTEGER
)