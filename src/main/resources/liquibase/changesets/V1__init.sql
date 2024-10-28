CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email    VARCHAR(255) NOT NULL,
);

CREATE TABLE roles
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE users_roles
(
    user_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
);

CREATE TABLE authors
(
    id        SERIAL PRIMARY KEY,
    name      VARCHAR(255) NOT NULL,
    biography TEXT,
    birthdate DATE
);

CREATE TABLE books
(
    id               SERIAL PRIMARY KEY,
    isbn             VARCHAR(20)    NOT NULL,
    title            VARCHAR(255)   NOT NULL,
    description      TEXT,
    author_id        BIGINT         REFERENCES authors (id) ON DELETE SET NULL,
    price            DECIMAL(10, 2) NOT NULL,
    publication_date DATE
);
