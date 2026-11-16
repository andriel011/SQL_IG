USE instagram;

INSERT INTO account_types (TypeName)
VALUES
('Personal'),
('Creator'),
('Business');



INSERT INTO categories (CategoryName)
VALUES
('Gaming'),
('Technology'),
('Photography');



INSERT INTO users
(Username, Email, Password, Bio, AccountTypeID)
VALUES
('andriel', 'andriel@gmail.com', '123456', 'Programador', 2),
('jony', 'jony@gmail.com', '123456', 'Gamer', 1),
('maria', 'maria@gmail.com', '123456', 'Fotografa', 3);


INSERT INTO posts
(UserID, CategoryID, Caption)
VALUES
(1, 2, 'Mi primer post'),
(1, 2, 'Aprendiendo SQL'),
(2, 1, 'Jugando Cyberpunk'),
(3, 3, 'Foto del dia');


INSERT INTO likes
(UserID, PostID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3);


INSERT INTO comments
(UserID, PostID, CommentText)
VALUES
(2, 1, 'Buen post'),
(3, 1, 'Me gusto'),
(1, 3, 'Cyberpunk es genial'),
(2, 4, 'Excelente foto');


INSERT INTO follows
(FollowerID, FollowingID)
VALUES
(2, 1),
(3, 1),
(1, 2),
(1, 3);