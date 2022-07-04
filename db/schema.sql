CREATE DATABASE ecommerce_app;
\c ecommerce_app

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title TEXT,
    image TEXT,
    rating FLOAT,
    num_reviews INTEGER,
    price INTEGER,
    count_in_stock INTEGER,
    category TEXT,
    description TEXT
);

INSERT INTO products(title, image, rating, num_reviews, price, count_in_stock, category, description) VALUES
('Long Conection', 'https://mottive.com.br/wp-content/uploads/2022/01/IMG_1239-1.jpg', 3.5, 10, 130, 2, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Long Bibiana', 'https://mottive.com.br/wp-content/uploads/2021/11/20210914_121442002_iOS-1.jpg', 4.5, 12, 142, 3, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Longuete Naline', 'https://mottive.com.br/wp-content/uploads/2022/01/MOTITVE__105706-1-1-600x900.jpg', 5, 8, 133, 2, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Long Dream', 'https://mottive.com.br/wp-content/uploads/2022/01/Facetune_29-10-2021-17-47-25-1-1-600x898.jpg', 4.5, 15, 149, 4, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Long printed tulle', 'https://mottive.com.br/wp-content/uploads/2022/01/IMG_1234-1-600x898.jpg', 5, 9, 135, 1, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Long Ana Sofia', 'https://mottive.com.br/wp-content/uploads/2022/01/Facetune_13-09-2021-01-36-30-2-600x898.jpeg', 3.5, 10, 169, 0, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Longuete Mali', 'https://cdn.shopify.com/s/files/1/0422/4481/products/KD3768_Serge_Mini_Dress_Black_01_1120x.jpg?v=1648084373', 4.5, 13, 110, 8, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane'), ('Fontana Maxi Dress', 'https://cdn.shopify.com/s/files/1/0422/4481/products/KD3739_Poplin_Gathered_Dress_Green_01_1120x.jpg?v=1644555823', 4.5, 3, 169, 2, 'dresses', 'Material: Main: 95% Polyester, 5% Elastane Lining: 95% Polyester, 5% Elastane');

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