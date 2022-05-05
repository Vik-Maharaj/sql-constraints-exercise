DROP DATABASE IF EXISTS inventory_db;
CREATE DATABASE inventory_db;

USE inventory_db;

CREATE TABLE prices (
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  price DECIMAL(10,2)
);

CREATE TABLE books(
  id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  book_name VARCHAR(30) NOT NULL,
  price INTEGER,
  in_stock BOOLEAN,
  FOREIGN KEY (price) REFERENCES prices(id)
);

INSERT INTO prices (price) VALUES 
  (10.55),
  (11.55),
  (12.55),
  (13.55);

  INSERT INTO books (book_name, price)
  VALUES
    ("1984", 1),
    ("World War Z", 2);