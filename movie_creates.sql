CREATE TABLE theater (
  theater_id SERIAL PRIMARY KEY
  movies VARCHAR(50),
  tickets VARCHAR(50),
  concessions VARCHAR(50),
  payment_pos INTEGER
);

CREATE TABLE movies (
  movies_id SERIAL PRIMARY KEY
  movies_name VARCHAR(20),
  movies_theater VARCHAR(10),
  movies_seat VARCHAR(10),
  movies_showtime VARCHAR(10),
  theater_id VARCHAR(50),
  FOREIGN KEY theater_i) REFERENCES theater_id(theater_id)


CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY
  name VARCHAR(50),
  email VARCHAR(50),
  payment_method VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES theater_id(theater_id)
);

CREATE TABLE concessions (
  concessions_id SERIAL PRIMARY KEY
  concession_item VARCHAR(50),
  concession_quantity INTEGER(20),
  concession_price NUMERIC(40),
  theater_id VARCHAR(50),
  FOREIGN KEY (theater_id) REFERENCES theater_id(theater_id)
);

CREATE TABLE tickets (
  tickets_id SERIAL PRIMARY KEY
  customer_id VARCHAR(10),
  tickets_quantity VARCHAR(10),
  tickets_price VARCHAR(10),
  theater_id VARCHAR(50),
  FOREIGN KEY (theater_id) REFERENCES theater_id(theater_id)
);