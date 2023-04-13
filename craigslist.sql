CREATE TABLE posts
(
  region REFERENCES regions,
  title VARCHAR(50) NOT NULL,
  body TEXT NOT NULL,
  user REFERENCES users,
  loc VARCHAR(50),
  region REFERENCES regions
);

CREATE TABLE users
(
  username PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  region REFERENCES regions,
);

CREATE TABLE regions,
(
  title VARCHAR(50) PRIMARY KEY,
  info TEXT,
);

CREATE TABLE categories (
  title VARCHAR(50) NOT NULL,
  post_id REFERENCES posts,
);