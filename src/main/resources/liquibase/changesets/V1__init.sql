CREATE TABLE users (
-- auto-increments using serial
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL CHECK (role IN ('ADMIN_ROLE', 'CUSTOMER_ROLE'))
);

CREATE TABLE authors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    biography TEXT,
    birthdate DATE
);

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    isbn VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    author_id BIGINT REFERENCES authors(id) ON DELETE SET NULL,
    price DECIMAL(10, 2) NOT NULL,
    publication_date DATE
);
