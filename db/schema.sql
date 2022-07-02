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
('Pink dress with ruffle', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t39.30808-6/245625972_272615961534316_1106142917669379444_n.jpg?stp=dst-jpg_p526x296&_nc_cat=101&ccb=1-7&_nc_sid=730e14&_nc_ohc=FMWA1EUkYsIAX_hn4fA&tn=vPgNN9I-UkqXmIu8&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT-PuzWV29epKvpfHdkQXcqfRJZkC3RtZbDrRz1__KpBGw&oe=62C352D6', 3.5, 10, 130, 2, 'dresses'), ('Long dark blue dress', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t1.6435-9/106781401_3316522538411987_8421745317761575778_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-7&_nc_sid=9267fe&_nc_ohc=2Qzp3MNxD-QAX_XiYFy&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT-IFNN3mgA_B41FhPQ7ot0HK-EZzqoUbD9IjiFOO_mwhg&oe=62E47C1D', 4.5, 12, 142, 3, 'dresses'), ('Short white dress', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t39.30808-6/258516734_295241042605141_1246257818547536293_n.jpg?stp=dst-jpg_s640x640&_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=8PwTmRAAQTkAX-nfuh8&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT_oAcCvoYXWdEIXQVIDwkryanGLcWPFGfhK2ChH27PYJA&oe=62C3337E', 5, 8, 133, 2, 'dresses'), ('Light pink long dress', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t39.30808-6/259557239_295770055885573_7957991310000481307_n.jpg?stp=dst-jpg_p180x540&_nc_cat=108&ccb=1-7&_nc_sid=730e14&_nc_ohc=J0twrP7cZfgAX-FRaeM&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT-4h3gxq4QMRdNJUqf3GNa7oPxjKaBn314qbWisv5GZ0w&oe=62C349F8', 4.5, 15, 149, 4, 'dresses'), ('Short white dress with ruffle', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t39.30808-6/260473173_300668888729023_1611022106381270295_n.jpg?stp=dst-jpg_s640x640&_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=7IpdqwqVp-kAX9hDOub&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT-mss2QYYkJkJ6l7q2_8fOhxHSIyikCFfbpw-FemkLy5g&oe=62C42C1E', 5, 9, 135, 1, 'dresses'), ('Light green dress with ruffle', 'https://scontent.fsyd5-1.fna.fbcdn.net/v/t39.30808-6/265207240_309330727862839_2540057170085784588_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=730e14&_nc_ohc=Iz2A9SI2DFcAX-sXu9F&tn=vPgNN9I-UkqXmIu8&_nc_ht=scontent.fsyd5-1.fna&oh=00_AT9BPe_LFLl-pvBrvWfJVQwnsZfnp7mcJGv9rMOnPm-SaQ&oe=62C406E4', 3.5, 10, 169, 0, 'dresses');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

CREATE TABLE carts(
    id SERIAL PRIMARY KEY,
    title TEXT,
    image TEXT,
    price INTEGER,
    unit INTEGER
)