DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS rates CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;
DROP TABLE IF EXISTS guest_reviews CASCADE;

CREATE TABLE users 
(
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE properties 
(
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(255),
  description TEXT,
  thumbnail_photo_url VARCHAR(500),
  cover_photo_url VARCHAR(500),
  cost_per_night DECIMAL(5,2),
  street VARCHAR(255),
  parking_spaces SMALLINT,
  number_of_bathrooms SMALLINT,
  number_of_bedrooms SMALLINT,
  country TEXT,
  city TEXT,
  province TEXT,
  postal_code VARCHAR(255),
  active BOOLEAN,
  owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE rates 
(
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  cost_per_night DECIMAL(5,2),
  property_id INTEGER REFERENCES properties(id)
);

CREATE TABLE reservations
(
  id SERIAL PRIMARY KEY NOT NULL,
  start_date DATE,
  end_date DATE,
  property_id INTEGER REFERENCES properties(id),
  guest_id INTEGER REFERENCES users(id)
);

CREATE TABLE property_reviews
(
 id SERIAL PRIMARY KEY NOT NULL,
 rating SMALLINT,
 message TEXT,
 guest_id INTEGER REFERENCES users(id),
 reservation_id INTEGER REFERENCES reservations(id),
 property_id INTEGER REFERENCES properties(id)
);

CREATE TABLE guest_reviews 
(
  id SERIAL PRIMARY KEY NOT NULL,
  rating SMALLINT,
  message TEXT,
  guest_id INTEGER REFERENCES users(id),
  owner_id INTEGER REFERENCES users(id),
  reservation_id INTEGER REFERENCES reservations(id)
)
