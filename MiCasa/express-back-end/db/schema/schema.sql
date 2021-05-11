-- Drop and recreate Users table (Example)
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS property CASCADE;
DROP TABLE IF EXISTS property_loc_points CASCADE;
DROP TABLE IF EXISTS preferences CASCADE;
DROP TABLE IF EXISTS favourites CASCADE;



CREATE TABLE users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  isProfileVisible BOOLEAN
);


CREATE TABLE property (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  img_url VARCHAR(255) NOT NULL,
  isProfileVisible BOOLEAN,
  city VARCHAR(225)
);


CREATE TABLE property_loc_points (
  id SERIAL PRIMARY KEY NOT NULL,
  property_id INTEGER REFERENCES property(id) ON DELETE CASCADE,
  latitude FLOAT NOT NULL,
  longitude FLOAT NOT NULL
);



CREATE TABLE preferences(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  price INTEGER NOT NULL,
  bedroomNo INTEGER NOT NULL,
  bathroomNo INTEGER NOT NULL,
  size INTEGER NOT NULL,
  pets BOOLEAN,
  furnished BOOLEAN,
  laundry VARCHAR(255) NOT NULL,
  parking BOOLEAN,
  available_date VARCHAR(255) NOT NULL

);


CREATE TABLE favourites(
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  property_id INTEGER REFERENCES property(id) ON DELETE 
);