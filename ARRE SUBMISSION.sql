CREATE DATABASE  ARRECHATS

USE ARRECHATS
GO

CREATE SCHEMA ARRECHATS
GO


CREATE TABLE groups (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  member_count VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL
);

CREATE TABLE users (
  id INT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  created_at TIMESTAMP NOT NULL
);

CREATE TABLE group_members (
  group_id INT REFERENCES groups(id),
  user_id INT REFERENCES users(id),
  PRIMARY KEY (group_id, user_id)
);

CREATE TABLE messages (
  id INT PRIMARY KEY,
  group_id INT REFERENCES groups(id),
  user_id INT REFERENCES users(id),
  message TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL
);
