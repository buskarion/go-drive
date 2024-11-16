CREATE TABLE users (
	id SERIAL,
	name VARCHAR(80) NOT NULL,
	login VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(16) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
	modified_at TIMESTAMP NOT NULL,
	last_login TIMESTAMP DEFAULT current_timestamp,
	deleted BOOL NOT NULL DEFAULT false,
	PRIMARY KEY(id)
);
