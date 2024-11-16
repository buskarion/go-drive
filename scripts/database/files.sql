CREATE TABLE files (
	id SERIAL,
	folder_id INT,
	user_id INT NOT NULL,
	name VARCHAR(200) NOT NULL,
	tpye VARCHAR(50) NOT NULL,
	path VARCHAR(250) NOT NULL,
	created_at TIMESTAMP DEFAULT current_timestamp,
	modified_at TIMESTAMP NOT NULL,
	deleted BOOL NOT NULL DEFAULT false
	PRIMARY KEY(id),
	CONSTRAINT fk_folders
		FOREIGN KEY(folder_id)
			REFERENCES folders(id),
	CONSTRAINT fk_user
		FOREIGN KEY(user_id)
			REFERENCES users(id)
);
