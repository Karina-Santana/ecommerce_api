CREATE DATABASE ecommerce_app;
\c ecommerce_app

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name TEXT,
    image TEXT,
    price TEXT,
    description TEXT,
    stock BOOLEAN
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);