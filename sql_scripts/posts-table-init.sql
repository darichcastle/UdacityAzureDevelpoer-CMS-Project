CREATE TABLE POSTS(
    id INT NOT NULL IDENTITY(1, 1),
    title VARCHAR(150) NOT NULL,
    author VARCHAR(75) NOT NULL,
	body VARCHAR(800) NOT NULL,
	image_path VARCHAR(100) NULL,
	timestamp DATETIME NOT NULL DEFAULT(GETDATE()),
	user_id INT NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO dbo.posts (title, author, body, user_id)
VALUES (
    'Hello World!',
    'Jane Doe',
    'My name is Jane Doe and this is my first article!',
    1
);