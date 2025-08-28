-- Mood-App Database Schema

DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS user_activity;
DROP TABLE IF EXISTS user;


CREATE TABLE user (
  id serial PRIMARY KEY,
  username text NOT NULL UNIQUE,
  password_hash text NOT NULL
  
);

CREATE TABLE activities (
  id serial PRIMARY KEY,
  name text NOT NULL,
  description text NOT NULL,
  user_Id
  
);

CREATE TABLE user_activity (
  id serial PRIMARY KEY,
  user_id integer NOT NULL REFERENCES user(id) ON DELETE CASCADE,
  mood_selector text NOT NULL,
  description text NOT NULL
);

 