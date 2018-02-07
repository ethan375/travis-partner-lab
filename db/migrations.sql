
CREATE DATABASE chakra;

\c chakra

CREATE TABLE chakras(
id SERIAL PRIMARY KEY,
name VARCHAR(255),
color  VARCHAR(255),
size VARCHAR(255)
);